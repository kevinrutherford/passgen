Feature: users can choose from a variety of phrase structures

  Scenario: Choose a phrase structure
    When I select a particular phrase structure
     And I generate a passphrase
    Then I will get a passphrase of the correct structure

  Scenario: My choice is remembered
    When I select a particular phrase structure
     And I generate a passphrase
     And I generate a passphrase
    Then I will get a passphrase of the correct structure

