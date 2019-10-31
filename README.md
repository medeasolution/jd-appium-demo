# jd-appium-demo

Demo of Appium mobile functional testing integrated with BDD using behave.

## Branches

* ``1-hello-world``: simple test of a label content
* ``2-make-it-fail``: the same test, but failing
* ``3-get-going``: we create a test of making a calculation
* ``4-outline-rules``: we create a scenario outline with many calculation tests

## Requirements

* Android emulator or physical device
* Android SDK installed and reachable from ``ANDROID_HOME`` environment variable
* Appium Desktop (http://appium.io/)
* Python 3 (https://www.python.org/downloads/)
* Simple Calculator 5.0.5 APK: https://github.com/SimpleMobileTools/Simple-Calculator/releases

## Capabilities

A sample capabilities file ``capabilities-emulator-android.json`` is provided. You must change the "app" capability to match the path of the calculator APK you downloaded.

If using an Android emulator, the rest can go as is. If you're using a physical device, change ``deviceName`` to your device ID as shown in ``adb devices``.

## Configuration

The requirements at requirements.txt must be installed from PyPI. You can create a virtualenv (https://virtualenv.pypa.io/en/latest/) or install it in your system. Either way, run:

```
pip install -r requirements.txt
```  

## Running

Start Appium Desktop and run server.

To run the project use:

```
behave -Dcaps=capabilities-emulator-android.json features/calculator.feature
```

This will run the "calculator" feature with the provided capabilities file.

## Structure

Disclaimer: This project has a very basic structure that shouldn't be used for large projects.

The project has the following files:

* ``capabilities-emulator-android.json`` is a sample capabilities file to run tests in an Android emulator.
* ``features/`` is the folder containing the feature files
  * ``steps/`` contains the step implementations, in the file ``steps.py``
  * ``calculator.feature`` contains the Gherkin test definitions
  * ``environment.py`` has behave hooks that are run before all tests. It will initialize some context variables for using it between steps.
* ``requirements.txt`` is the Python requirements file. This project requires behave (https://behave.readthedocs.io/en/latest/behave.html) and Appium-Python-Client.

## Learn more...

* Appium documentation: http://appium.io/docs/en/about-appium/getting-started/index.html
* Behave documentation: https://behave.readthedocs.io/en/latest/behave.html