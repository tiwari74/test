Feature: sample karate test script
  

Scenario: post method for without user name and password
 
Given url 'https://qa-test.kickdrumtech.com/v1/login'
* request 
"""
{
}
 
"""
When method post
Then status 400
And print response
And match response contains
"""
{
"status": "Failed",
"statusCode": 400,
"code": "MissingParameterException",
"message": "Either Username or password is missing"
}
 
"""


Scenario: post method for with valid user name and password
 
Given url 'https://qa-test.kickdrumtech.com/v1/login'
* request 
"""
 {
  "username":"kickdrum",
  "password":"kickdrum"
 }
"""
When method post
Then status 200
And print response
And match response contains
"""
 {
  "status": "Success",
  "statusCode": 200,
  "message": "Authentication Successful"
}
 
"""

Scenario: post method for with invalid user name and password
 
Given url 'https://qa-test.kickdrumtech.com/v1/login'
* request 
"""
 {
"username":"ABC",
"password":"ABC"
}

"""
When method post
Then status 400
And print response
And match response contains
"""
{
  "status": "Failed",
  "statusCode": 400,
  "code": "MissingParameterException",
  "message": "Either Username or password is missing"
}



"""

