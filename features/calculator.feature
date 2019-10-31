Feature: Calculator
  As a user
  I want to have a calculator
  So I can perform basic operations

  Background:
    Given   the app is open

  Scenario: Zero is displayed when the calculator starts
    Then    the "result" label displays the value "1"