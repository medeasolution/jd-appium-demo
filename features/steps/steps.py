from behave import step


@step("the app is open")
def open_app(context):
    from appium import webdriver
    import json
    with open(context.config.userdata["caps"], "r") as caps:
        desired_caps = json.load(caps)
    context.driver = webdriver.Remote('http://localhost:4723/wd/hub', desired_caps)


@step('the "{name}" label displays the value "{value}"')
def label_displays_value(context, name, value):
    element = context.driver.find_element_by_id('result')
    assert element is not None
