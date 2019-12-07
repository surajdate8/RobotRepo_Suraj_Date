*** Settings ***
Library    SeleniumLibrary      

Suite Setup        Log    In_Suite_setup    
Suite Teardown     Close All Browsers      

Default Tags    sanity

# test Setup        Open Browser    https://opensource-demo.orangehrmlive.com/    chrome    
# test Teardown     Close All Browsers    


*** Test Cases ***
MyFirstTest
    Log   In first test case    

MySecondTest
    [Tags]    smoke
    Log   In second test case    

MyThirdTest
    Log   In third test case    
    

MyFourthTest
    Log   In third test case  
    
# SampleLoginTest
    # Set Browser Implicit Wait    2
    # Input Text        id=txtUsername                                        admin
    # Set Browser Implicit Wait    2
    # Input Password    id=txtPassword                                        admin123
    # Set Browser Implicit Wait    2   
    # Click Button      id=btnLogin  
    # Set Browser Implicit Wait    2   
    # Click Element    id=welcome    
    # Set Browser Implicit Wait    2
    # Click Element    link=Logout
    # Set Browser Implicit Wait    2    
    # Log    TestPassed..    
    

# SampleLoginTest_Using_Variable
    # Set Browser Implicit Wait    2
    # Input Text        id=txtUsername                                        @{credentails}[0]
    # Set Browser Implicit Wait    2
    # Input Password    id=txtPassword                                        &{LoginData}[password]
    # Set Browser Implicit Wait    2   
    # Click Button      id=btnLogin  
    # Set Browser Implicit Wait    2   
    # Click Element    id=welcome    
    # Set Browser Implicit Wait    10
    # Click Element    link=Logout
    # Set Browser Implicit Wait    2    
    # Log    This test was conducted by %{username} on %{os}    
    # Log    TestPassed..    

# SampleLoginTest_Using_Variable_&_Keywords
    # Set Browser Implicit Wait    2
    # LoginAction
    # Set Browser Implicit Wait    2   
    # Click Element    id=welcome    
    # Set Browser Implicit Wait    10
    # Click Element    link=Logout
    # Set Browser Implicit Wait    2    
    # Log    This test was conducted by %{username} on %{os}    
    # Log    TestPassed..    



*** Variables ***
${URL}           https://opensource-demo.orangehrmlive.com/
@{credentails}   admin    admin123
&{LoginData}     username=admin    password=admin123

*** Keywords ***
LoginAction
    Input Text        id=txtUsername                                        @{credentails}[0]
    Set Browser Implicit Wait    2
    Input Password    id=txtPassword                                        &{LoginData}[password]
    Set Browser Implicit Wait    2   
    Click Button      id=btnLogin  
    