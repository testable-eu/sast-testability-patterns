<?php
$x = $_GET["p"];
// " onfocus="alert(1)" autofocus="
// https://security.stackexchange.com/questions/97550/how-to-launch-xss-code-from-an-input-html-tag-upon-page-load
$y = strip_tags($x);
?>

<input type="hidden" name="return" value="<?php echo $y ?>" />
