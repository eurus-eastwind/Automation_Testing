@smoke
Feature: PUP_Website

  Scenario Outline: About PUP Website <name>
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name                 | btn1              | btn2                    | expected                                            |
      | Graduate Studies     | {a}Academic       | {a}Graduate Studies     | https://www.pup.edu.ph/academic/graduatestudies     |
      | Academic Programs    | {a}Academic       | {a}Academic Programs    | https://www.pup.edu.ph/academic/programs            |