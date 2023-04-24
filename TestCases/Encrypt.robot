****** settings ***
Library      SeleniumLibrary
Library      CryptoLibrary       variable_decryption=True



****** variables ***
${browser}            chrome
${url}                https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Username}           Admin
${PSW_AS_PLAINTEXT}   crypt:FjBAjHZQzevFIDCiZYdJy7J8J6PPTRn7UBEH4HEb8XwaP2tlfZyPTP3+pQa0+Gjj+gLRgqzz/Zw=





****** test cases ***
TC01
    open browser        ${url}   ${browser}
    maximize browser window
    sleep  3
    Login Test
    close browser



****** keywords ***
Login Test
    input text        name:username    ${Username}
    sleep  3
    input text        name:password    ${PSW_AS_PLAINTEXT}
    sleep  2
    click element     xpath://button[@type='submit']



#robot --listener 'allure_robotframework;./results/allure'
#allure serve ./results/allure





















