from selenium import webdriver
import time

print('hello, world!')
print('commit test.')

browser=webdriver.Firefox()

browser.get("https://google.com")

time.sleep(5)

browser.quit()