[Callbacks](https://www.php.net/manual/en/language.types.callable.php) are defined in PHP.
>>>
Some functions like call_user_func() or usort() accept user-defined callback functions as a parameter. Calls the callback given by the first parameter and passes the remaining parameters as arguments.
Special cases:
*  call_user_func function
*  call_user_func_array function
*  usort function
*  call_user_func with reference
*  call_user_func_array with reference
*  function name as a variable (hard coded and source variable)
*  call_user_func with object
>>>
Note:
Callbacks registered with functions such as call_user_func() and call_user_func_array() will not be called if there is an uncaught exception thrown in a previous callback.