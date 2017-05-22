import sys, os
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options

clicks = int(sys.argv[1])
assert (clicks is not int), "Provided argument is not of type Int"

url = "http://orteil.dashnet.org/cookieclicker/"
path = os.path.dirname(__file__)
driver = os.path.join(path, "chrome-webdriver", "chromedriver")

driver = webdriver.Chrome(driver)
driver.get(url)
assert "Cookie Clicker" in driver.title, "Not in specified website."

cookie_div = driver.find_element_by_id("bigCookie")

for i in range(0,clicks):
    cookie_div.click()
#driver.close()
