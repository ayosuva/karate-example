Feature: user details
@tag
Scenario: get call test
  * def expected_response = read('response.json')
  
    Given url "https://reqres.in/api/users/2"
    When method GET
    Then status 200
    Then print response
    And match response == expected_response
    And match response.data.id == 2
    And match response.data.last_name != null  
    * match response.data.job_code == '#notpresent'
    