Feature: Calculator
  As a user
  I want to have a calculator
  So I can perform basic operations

  Background:
    Given   the app is open

  Scenario: Zero is displayed when the calculator starts
    Then    the "result" label displays the value "0"

  Scenario: Operation 15 plus 20 has result 35
    Given   the "result" label displays the value "0"
    When    I input numbers "15"
    And     I press "plus" button
    And     I input numbers "20"
    And     I press "equals" button
    Then    the "result" label displays the value "35"