<?php

class HelloWorld extends \lang\Object {
  public static function main($args) {
  	if (sizeof($args) > 0) {
      \util\cmd\Console::writeLine('Hello ', $args[0]);
    } else {
      \util\cmd\Console::writeLine('Hello World');
    }
  }
}