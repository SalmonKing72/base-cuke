module BrowserCapabilities
    def BrowserCapabilities.get_ie_capabilities
        Selenium::WebDriver::Remote::Capabilities.internet_explorer(
            :ignoreProtectedModeSettings => true,
            :ensureCleanSession => true,
            :unexpectedAlertBehaviour => 'accept',
            :handlesAlerts => true,
            :acceptSslCerts => true
        )
    end

    def BrowserCapabilities.get_chrome_capabilities
        Selenium::WebDriver::Remote::Capabilities.chrome(
            :handlesAlerts => true,
            :acceptSslCerts => true
        )
    end

    def BrowserCapabilities.get_firefox_capabilities
        Selenium::WebDriver::Remote::Capabilities.firefox(
            :handlesAlerts => true,
            :acceptSslCerts => true
        )
    end
end