from selenium import webdriver
from selenium.webdriver.support import ui
import time


def python_selenium_test():
    print('Hello, world!')

    browser = webdriver.Chrome()
    wait = ui.WebDriverWait(browser, 5)
    browser.get("https://www.phptravels.net/admin")

    user = browser.find_element_by_css_selector(
        ".input-outlined > input[name='email']")
    user.send_keys("admin@phptravels.com")

    pwd = browser.find_element_by_css_selector(
        ".input-outlined > input[name='password']")
    pwd.send_keys("demoadmin")

    browser.find_element_by_css_selector("button[type=submit]").click()

    wait.until(
        lambda browser: browser.find_element_by_id("logout"))

    time.sleep(5)
    browser.quit()


if(__name__ == "__main__"):
    python_selenium_test()
