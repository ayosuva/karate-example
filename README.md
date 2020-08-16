# karate-example

### Eclipse Maven Configuration:

Archetype Group Id= com.intuit.karate

ArchetypeArtifactId= karate-archetype

ArchetypeVersion=0.2.7

### Install cucumber plugin in eclipse using Help->Install New Software -> Add Option
Name:Cucumber
Location:http://cucumber.github.com/cucumber-eclipse/update-site

### Sample Test Feature file
```js
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
```
