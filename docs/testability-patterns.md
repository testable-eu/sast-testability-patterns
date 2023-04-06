# Testability Patterns

## Introduction

When scanning application code, SAST tools may encounter some code instructions that they are not able to properly interpret and analyse. Code instructions used for [reflective programming](https://en.wikipedia.org/wiki/Reflective_programming)---such as the PHP `call_user_func($f, $a)`, that at runtime will execute a function depending on the value of `$f`---are a classical example, but there are many more. When a SAST tool encounter such an instruction, it may not know which function will be invoked and therefore may get lost in its analysis.

A _Testability Pattern_ (TeP, in short) aims to capture these challenging code instructions, that we refer to as _tarpits_.

A TeP includes a set of _Testability Pattern Instances_ (TePIs), related to each other by the resemblance of the tarpits they are capturing.

TePIs shall be

- measurable against SAST Tools: a TePI thus acts as a kind of testcase for SAST, measuring whether the SAST tool supports that TePI or not
- minimalistic: comprising only the minimal part characterizing the tarpit for SAST (basically we do not want to combine two tarpits in a single TePI)
- discoverable in source code: a discovery rule shall be created to enable developers to discover the tarpit in real applications 
- remediable, if possible: so to remove/mitigate the tarpit to make the application more testable for SAST tools

Though each TeP is targeting one specific programming language, it is common that some TeP created for one language can be easily refactored into a TeP for another programming language (assuming the other language also supports the tarpit captured by that pattern).

## Example: How to create a Testability Pattern

To illustrate let us consider an example of TeP targeting the dynamic dispatching PHP method

```php
call_user_func(callable $callback, mixed ...$args): mixed // Calls the callback given by the first parameter and passes the remaining parameters as arguments.
```

This method is a classical example of dynamic programming language features (reflection), that are known to be challenging for SAST.

A TeP, say `01_call_user_func`, can be created to capture the challenge underlying that dynamic feature. The creation requires two steps:

1. Creation of TePIs
2. Specifying the TeP main json artifact

### Creation of Testability Pattern Instances

Let us see how to create TePIs for that `01_call_user_func` pattern.

Testability pattern instances share a common structure shown in this puzzle picture, where the tarpit is encapsulated between a source-sink dataflow vulnerable to a [cross-site scripting](https://owasp.org/www-community/attacks/xss/) (XSS, the most common injection vulnerability that SAST tools can detect). The idea is that if a SAST tool cannot detect the XSS, it must be because of the tarpit.  The tarpit may require some additional companion code to be fully executable.

![](https://blogs.sap.com/wp-content/uploads/2022/05/TPI-puzzle.png)

More concretely, using PHP as targeted programming language, the blue part of each TePI looks like this:

```php
// Testability Pattern Instance - basic skeleton
$a = $_GET["p1"]; // source
$b = $a // replace this line with the tarpit!
echo $b; // sink
```

This code, first, sets the variable `$a` with a simple _source_ (i.e., location in the program where data is being read from a potentially risky source, in this specific case a parameter from an HTTP GET request) and then writes the value of that variable in the web page (via the `echo`, the _sink_), without any sanitization. This is a trivial XSS example. A TePI code snippet is created by putting a tarpit between the source and the sink.

For the `call_user_func` example, the following TePI code snippet can thus be created:

```php
// call_user_func - Testability Pattern Instance 1 
function F($var) {
   return $var;
}
$a = $_GET["p1"]; // source
$b = call_user_func("F", $a); // tarpit with constant
echo $b; // sink
```

Basically,

- the `call_user_func` instruction is used as main tarpit, though a simple constant `"F"` is used to define which function to call
- the function `F()` is also added to the code snippet to make it self-contained (code companion for the tarpit)

A SAST tool can now be run against that code snippet to evaluate whether the tool supports `call_user_func` when a constant is used as first parameter or not.

All this makes the TePI _measurable_ for SAST tools. Also, the TePI as we defined it is _minimalistic_ and capturing only the tarpit we wanted to capture. Sometime, it is more difficult to capture SAST challenges and the TePI could comprise many code instructions from which it may be challenging to distill exactly the tarpit. When this is the case, the measurement with SAST tools may require more experiments (e.g., creating additional instances where only few controlled code instructions were changed) to be sure what was really the tarpit.

A discovery rule can be created for that TePI, a more specifically for its tarpit, to make it _discoverable_. In our example, this rule should be able to return `call_user_func` occurrences in a PHP application code for which a constant is used as first parameter.

Our TePI example can also be easily _remediate_. A transformation rule can be created it where PHP code instructions such as `call_user_func("f", $a)` are transformed into `f($a)`.

Other TePIs can be created for `call_user_func` and included in the TeP `01_call_user_func`. Hereafter a few examples of those TePIs

```php
// call_user_func - Testability Pattern Instance 2
function F($var) {
   return $var;
}
$a = $_GET["p1"]; // source
$f = "F";
$b = call_user_func($f, $a); // tarpit with variable
echo $b; // sink
```

```php
// call_user_func - Testability Pattern Instance 3
function F_1($var) {
   return $var;
}
function F_2($var) {
   return "foo";
}
$a = $_GET["p1"]; // source
$f = "F";
$b = call_user_func($f . "_1", $a); // tarpit with concat of variable and constant
echo $b; // sink
```

Discovery rules and remediations can be created for those other instances as well.

### Specifying the main json artifact for the pattern

Once the instances are created and documented, we specify the pattern via a json file:

```json
{
    "name": "Callback Functions",
    "definition": "[Callbacks](https://www.php.net/manual/en/language.types.callable.php) are defined in PHP.\n>>>\nSome functions like call_user_func() or usort() accept user-defined callback functions as a parameter. Calls the callback given by the first parameter and passes the remaining parameters as arguments.\nSpecial cases:\n*  call_user_func function\n*  call_user_func_array function\n*  usort function\n*  call_user_func with reference\n*  call_user_func_array with reference\n*  function name as a variable (hard coded and source variable)\n*  call_user_func with object\n>>>\nNote:\nCallbacks registered with functions such as call_user_func() and call_user_func_array() will not be called if there is an uncaught exception thrown in a previous callback.",
    "family": "code_pattern_php",
    "tags": ["function", "php_v7.4.9", "sast"],
    "instances": [
        "./1_instance_80_callback_functions/1_instance_80_callback_functions.json",
        "./2_instance_80_callback_functions/2_instance_80_callback_functions.json",
        "./3_instance_80_callback_functions/3_instance_80_callback_functions.json",
        "./4_instance_80_callback_functions/4_instance_80_callback_functions.json",
        "./5_instance_80_callback_functions/5_instance_80_callback_functions.json"
    ]
}
```

[//]: # (why is only a little bit explained here and not the whole json file?)

This pattern is specified to belong to the catalog `code_pattern_php`. It features multiple custom tags:

- `php_v7.4.9`:  the PHP version used to create the pattern instances
- `function`: all its pattern instances target PHP functions
- `sast`: the domain area is SAST 
It comprises 5 pattern instances (TePIs) whose details are presented in other json files, previously created for each instance. 

More details are available in the [testability patterns structure](./testability-patterns-structure.md).
