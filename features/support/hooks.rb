require 'selenium-webdriver'
require_relative './browser_capabilities'

Before do
    browser = ENV['browser']
    case browser
        when 'chrome' then @browser = Selenium::WebDriver.for :chrome, desired_capabilities: BrowserCapabilities.get_chrome_capabilities
        when 'firefox' then @browser =  Selenium::WebDriver.for :firefox, desired_capabilities: BrowserCapabilities.get_firefox_capabilities
        when 'ie' then @browser =  Selenium::WebDriver.for :ie, desired_capabilities: BrowserCapabilities.get_ie_capabilities
        when 'phantomjs' then @browser =  Selenium::WebDriver.for :phantomjs
        else @browser =  Selenium::WebDriver.for :phantomjs
    end
end

After do
    @browser.close
    @browser.quit
end