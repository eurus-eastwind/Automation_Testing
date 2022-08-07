@smoke
Feature: View University Calendar of PUP System


  Scenario Outline: University Calendar - <name>
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name                 | btn1              | btn2                      | expected                                         |
      | About PUP            | {a}About PUP     | {a}University Calendar     | https://www.pup.edu.ph/about/calendar            |