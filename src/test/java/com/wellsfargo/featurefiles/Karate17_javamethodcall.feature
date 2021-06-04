

Feature: Karate Test Suite 17
  java  methodcall feature file

  @rest
  Scenario: java method call test case 1
  java call scenario module
    * def result1 =
    """
    function()
    {
    var a = Java.type('com.wellsfargo.utils.BDDUtil')
    return a.getStaticMethod();
    }
    """
    * print result1()

  Scenario: java method call test case 1
  java call scenario module for non static method
    * def result1 =
    """
    function()
    {
    var a = Java.type('com.wellsfargo.utils.BDDUtil')
    var b = new a()
    return b.getNonStaticMethod();
    return new a().getNonStaticMethod();
    }
    """
    * print result1()
  Scenario: java method call test case 2
  java call scenario module for non static method
    * def result1 =
    """
    function()
    {
    var a = new() Java.type('com.wellsfargo.utils.BDDUtil')
    return a.getNonStaticMethod();
    }
    """
    * print result1()