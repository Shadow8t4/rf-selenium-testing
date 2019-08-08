from selenium import webdriver
import time

def main():
    print('hello, world!')
    print('commit test.')

    browser=webdriver.Chrome()
    browser.get("http://testing-ground.scraping.pro/login")

    user = browser.find_element_by_id("usr")
    user.send_keys("admin")

    pwd = browser.find_element_by_id("pwd")
    pwd.send_keys("12345")

    browser.find_element_by_xpath("//input[@value='Login']").click()
    
    time.sleep(5)
    browser.quit()

if(__name__ == "__main__"):
    main()
