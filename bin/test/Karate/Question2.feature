Feature: sample karate test script
  

Scenario: post method for without user name and password
 
Given url 'https://qa-test.kickdrumtech.com/v1/user/kickdrum'
* request 
"""
{
}
 
"""
When method put
Then status 200
And print response
And match response contains 
"""
{"status":"Success","statusCode":200,"message":"Your profile has been updated successfully"}
"""


Scenario: pot method for without parameter other than kickdrum
 
Given url 'https://qa-test.kickdrumtech.com/v1/user/'

* request 
"""
{
}
 
"""
When method put
Then status 403
And match response contains
"""
{"message":"Missing Authentication Token"}
"""






