Feature: Calculator
  As a user
  I want to have a calculator
  So I can perform basic operations

  Background:
    Given   the app is open

  Scenario: Zero is displayed when the calculator starts
    Then    the "result" label displays the value "0"

  Scenario Outline: Operation <number1> <operation> <number2> has result <result>
    Given   the "result" label displays the value "0"
    When    I input numbers "<number1>"
    And     I press "<operation>" button
    And     I input numbers "<number2>"
    And     I press "equals" button
    Then    the "result" label displays the value "<result>"

    Examples:
    | number1 | operation | number2 | result |
    | 15      | plus      | 20      | 35     |
    | 20      | minus     | 10      | 10     |
    | 5       | multiply  | 4       | 20     |
    | 6       | divide    | 2       | 3      |