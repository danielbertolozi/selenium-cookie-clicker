#!/bin/bash

WDURL="https://chromedriver.storage.googleapis.com/LATEST_RELEASE"
LATESTRELEASE=$(curl -s https://chromedriver.storage.googleapis.com/LATEST_RELEASE)
echo -e "Please enter the desired version:\n1) chromedriver_linux32.zip\n2) chromedriver_linux64.zip\n3) chromedriver_mac64.zip\n4) chromedriver_win32.zip\nEnter your option: "
read opt
echo -e "\n"
case $opt in
		1) VERSION="chromedriver_linux32.zip"
				;;
		2) VERSION="chromedriver_linux64.zip"
				;;
		3) VERSION="chromedriver_mac64.zip"
				;;
		4) VERSION="chromedriver_win32.zip"
				;;
		*) echo "Invalid option. Exiting."
				exit 2
esac
DOWNLOADURL="https://chromedriver.storage.googleapis.com/"$LATESTRELEASE"/"$VERSION
curl -o /tmp/webdriver.zip $DOWNLOADURL
unzip /tmp/webdriver.zip -d chrome-webdriver/
echo "Done! Exiting."
exit 0
