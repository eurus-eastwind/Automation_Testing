@smoke @ignore
Feature: PUP_Website

  Scenario Outline: About PUP Website <name>
    #* configure driver = {type:'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    * configure driver = {type:'chromedriver', executable: 'C:/Program Files/Google/Chrome/Application/chromedriver.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name               | btn1              | btn2                  | expected                   |
      | University Profile | {a}About PUP      | {a}University Profile | www.pup.edu.ph/about       |
      | Vision and Mission | {a}About PUP      | {a}Vision and Mission | www.pup.edu.ph/about/vm    |