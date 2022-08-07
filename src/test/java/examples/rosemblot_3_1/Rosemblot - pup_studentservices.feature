@smoke
Feature: PUP_Website

  Scenario Outline: View student services of PUP
    * configure driver = { type: 'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe' }
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name              | btn1          | btn2                  | expected                         |
      | Academic Programs | { a }Students | { a }Student Services | https://www.pup.edu.ph/students/ |