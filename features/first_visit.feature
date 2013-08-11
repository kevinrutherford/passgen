Feature: First visit to the generator

  Scenario: First visit
    When I visit the site for the first time
    Then I will see a random passphrase

  Scenario: Second visit
    Given I have generated a passphrase
     When I generate another
     Then the new passphrase will be different from the first

