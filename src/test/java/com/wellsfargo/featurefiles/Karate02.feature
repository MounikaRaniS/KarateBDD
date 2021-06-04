Feature: Karate Test Suite 2
  JSON validation

  Scenario: Karate JSON TestCase 1
    This is the first test case to validate JSON validation

    Given def json = { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "101"
    * assert json.tool.name == "Karate"

  Scenario: Karate JSON TestCase 2
  This is the second test case to validate JSON validation

    Given def json =
    """
    {
        "id" : "101",
        "tool": { "name":"Karate", "version":"0.9.6"}
     }
    """
    * print json
    * print json.id
    * print json.tool.name
    * assert json.id == "101"
    * assert json.tool.name == "Karate"
      #making json itself as a assertion
    * match json.tool == { "name":"Karate", "version":"0.9.6"}