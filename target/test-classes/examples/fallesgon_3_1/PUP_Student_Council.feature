@smoke
Feature: View Student Council of PUP System

  Scenario Outline: PUP Calendar <name>
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name                  | btn1                     | btn2                 | expected                          |
      | Student Council page  | {a}Students              | {a}Student Council   | www.pup.edu.ph/students/council   |