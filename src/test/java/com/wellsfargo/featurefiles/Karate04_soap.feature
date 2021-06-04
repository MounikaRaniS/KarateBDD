Feature: Karate Test Suite 4
  Soap API validation

  Scenario: Karate Soap1.1 API TestCase 1
  This is the first test case to validate Soap1.1 validation

    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    And request
    """
    <?xml version="1.0" encoding="utf-8"?>
    <soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">
       <soap:Body>
         <CelsiusToFahrenheit xmlns="https://www.w3schools.com/xml/">
          <Celsius>string</Celsius>
          </CelsiusToFahrenheit>
      </soap:Body>
    </soap:Envelope>
    """
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
###################------------------------------------------------------------
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