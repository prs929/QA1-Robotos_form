*** Settings ***
Library    SeleniumLibrary        

*** Test Cases ***
#TC_01_Login
    #Open Browser    https://opensource-demo.orangehrmlive.com/    ff
    #Input Text    xpath=//input[@id='txtUsername']    Admin
    
    #${speed} =  Get Selenium Speed
    #Log To Console    ${speed}    

    # selenium speed ajoute un temps entre chaque instruction
    #Set Selenium Speed    5s
    #Sleep    5s    
    
    #${speed} =  Get Selenium Speed
    #Log To Console    ${speed}
        
    #Input Password    xpath=//input[@id='txtPassword']    admin123    
    #Click Button    //input[@id='btnLogin']    
    

#TC_02_Login
    #Open Browser    https://opensource-demo.orangehrmlive.com/    gc
    #Input Text    xpath=//input[@id='txtUsername']    Admin
    #Input Password    xpath=//input[@id='txtPassword']    admin123    
    #Click Button    xpath=//input[@id='btnLogin']  
    
   # Click Link    xpath=//a[@id='welcome']
    #Sleep    4s
    #Click Link    link=Logout    
    
TC_03_Login
    Open Browser    https://opensource-demo.orangehrmlive.com/    ff
    
    #time par defaut :
    ${timeout} =  Get Selenium Timeout
    Log To Console    ${timeout}        

    #time d'attente ajousté à 20 sec
    Set Selenium Timeout    20s  
    ${timeout} =  Get Selenium Timeout
    Log To Console    ${timeout}     
    
    Input Text    xpath=//input[@id='txtUsername']    Admin
    Input Password    xpath=//input[@id='txtPassword']    admin123    
    Click Button    //input[@id='btnLogin']  
   
    Wait Until Page Contains    Dashboard    

    

