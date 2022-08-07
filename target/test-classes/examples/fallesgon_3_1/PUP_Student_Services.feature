@smoke @ignore
Feature: View Student Services of PUP System

  Scenario Outline: PUP Student Services <name>
    * configure driver = {type:'chrome', executable: 'C:/Program Files/Google/Chrome/Application/chrome.exe'}
    * driver 'https://www.pup.edu.ph/'
    And click('<btn1>')
    When click('<btn2>')
    Then waitForUrl('<expected>')

    Examples:
      | name                  | btn1            | btn2                   | expected                     |
      | Student Services page | {a}Students     | {a}Student Services    | www.pup.edu.ph/students/     |