Foreach is used by high level programming languages to iterate over arrays and objects.

```php
<?php
$arr = array(1,2,3);
foreach($arr as $value){
    echo $value;
}
```

In this example, any change on the variable $value will not change on the array $arr. If we want to keep the changes we have to add a reference.

```php
<?php
$arr = array(1,2,3);
foreach($arr as &$value){
    ...
}
```