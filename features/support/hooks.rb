require 'selenium-webdriver'
require_relative './browser_capabilities'

Before do
    browser = ENV['browser']
    case browser
        when 'chrome' then $driver = Selenium::WebDriver.for :chrome, desired_capabilities: BrowserCapabilities.get_chrome_capabilities
        when 'firefox' then $driver =  Selenium::WebDriver.for :firefox, desired_capabilities: BrowserCapabilities.get_firefox_capabilities
        when 'ie' then $driver =  Selenium::WebDriver.for :ie, desired_capabilities: BrowserCapabilities.get_ie_capabilities
        when 'phantomjs' then $driver =  Selenium::WebDriver.for :phantomjs
        else $driver =  Selenium::WebDriver.for :phantomjs
    end
end

After do
    $driver.close
    $driver.quit
end