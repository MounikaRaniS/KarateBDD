

Feature: Karate Test Suite 16
  java script function call feature file

  @rest
  Scenario: js function call test case 1
  js function call scenario module

    * def f1 = function() { return 10; }
    * def f2 =
    """
    function(a) {
    karate.log(a);
    }
    """
    * print f1()
    * f2("hello")
