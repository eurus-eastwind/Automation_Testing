@smoke
Feature: View programs that PUP offers.

  Scenario Outline: Course Program <name>
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name                 | btn1              | btn2                    | expected                                            |
      | Academic Programs    | {a}Academic       | {a}Academic Programs    | https://www.pup.edu.ph/academic/programs            |