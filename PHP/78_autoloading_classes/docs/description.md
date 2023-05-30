PHP offers a feature for auto loading the classes instead of including them in each file [Autoloading classes](https://www.php.net/manual/en/language.oop5.autoload.php). It is a function will be called when the class is not exist, then this function will include the correct file for this class.

```php
<?php
spl_autoload_register(function ($class_name) {
include $class_name . '.php';
});
$obj  = new MyClass1();
$obj2 = new MyClass2();
```

In this article [How to use autoloading](https://www.smashingmagazine.com/2015/05/how-to-use-autoloading-and-a-plugin-container-in-wordpress-plugins/), they adopt [PEAR naming convention](https://pear.php.net/manual/en/standards.naming.php) for the class names.
> The gist is that class names are alphabetic characters in StudlyCaps. Each level of the hierarchy is separated with a single underscore. Class names will directly map to the directories in which they are stored.
>
> For example, A class named Simplarity_Plugin would be defined in the file src/Simplarity/Plugin.php.
>
> As you can see with this convention, the autoloader will just replace the underscores with directory separators to locate the class definition.
Finally, it is difficult for the static tool to find the class file.