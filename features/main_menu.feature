@main_menu
Feature: As a user I want to convert units

  Scenario: When I tap on menu icon, I should see left side menu
    Given I land on home screen
    When I press on menu icon
    Then I should see left side menu

  @conversions
  Scenario: I should be able to open my conversions screen
    Given I land on home screen
    When I press on menu icon
    And I press on My Conversions button
    Then I land on My Conversions screen

