Feature: Karate Test Suite 6
  Reading payload data from external file

  @soap
  Scenario: Karate Soap1.1 complete validation TestCase 1
  This is the first test case for reading payload data from external file

    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    # for to read data from external xml file we can give file path also
    And request read("tempconvert_input.xml")
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
    * print responseHeaders
    #array validation
    * match responseHeaders["Server"] == ["Microsoft-IIS/7.5"]
    #index value validation in array
    * match responseHeaders["Server"][0] == "Microsoft-IIS/7.5"
    * match responseType == "xml"
    * print response
    * match response contains "102.2"
    #x path based validation
    * match response //CelsiusToFahrenheitResult == 102.2
    #response time validation
    * assert responseTime <= 2000
    * print responseTime



###################------------------------------------------------------------
  @soap
  Scenario: Karate Soap1.2 API TestCase 2
  This is the first test case to validate Soap1.1 validation

    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "application/soap+xml; charset=utf-8"
    And request
    """
    <?xml version="1.0" encoding="utf-8"?>
    <soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
      <soap12:Body>
        <CelsiusToFahrenheit xmlns="https://www.w3schools.com/xml/">
        <Celsius>40</Celsius>
        </CelsiusToFahrenheit>
       </soap12:Body>
    </soap12:Envelope>
    """
    When method post
    Then status 200
    * print responseHeaders
    #array validation
    * match responseHeaders["Content-Type"] == ["application/soap+xml; charset=utf-8"]
    #index value validation in array
    * match responseHeaders["Content-Type"][0] == "application/soap+xml; charset=utf-8"
    * match responseType == "xml"
    * print response
    * match response contains "104"
    #x path based validation
    * match response //CelsiusToFahrenheitResult == 104
    #response time validation
    * assert responseTime <= 2000
    * print responseTime