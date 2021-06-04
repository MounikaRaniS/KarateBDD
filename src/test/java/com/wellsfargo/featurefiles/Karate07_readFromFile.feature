Feature: Karate Test Suite 7
  Reading from external file

  @soap
  Scenario: Karate reading data from external xml file TestCase 1
    This is the first test case for reading data from external file

    * def xml = read("tempconvert_input.xml")
    * print xml
    * match xml contains 39
    * match xml //CelsiusToFahrenheit/Celsius == 39