from selenium.webdriver import ChromeOptions

def get_chrome_options():
    options = ChromeOptions()
    prefs = {
        "profile.password_manager_leak_detection": False,
        "credentials_enable_service": False,
        "profile.password_manager_enabled": False
    }
    options.add_experimental_option("prefs", prefs)
    return options

CHROME_OPTIONS = get_chrome_options()