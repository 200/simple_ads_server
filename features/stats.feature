Feature: Day views
  In order to check day statistics
  As a admin
  I want to check statistics from each day

  @index_by_date

  Scenario: Go to the next day 
    Given I have 3 days stats
    And I am on the day view 
    And I follow "Next day >>"
    Then I should see "03/03/2011"

  Scenario: Go to the before day 
    Given I have 3 days stats
    And I am on the day view 
    And I follow "<< Previous day"
    Then I should see "03/01/2011"
    
  #TODO any day select

  Scenario: Show pair Zone + Ad stats
    Given I have 1 days stats
    And I am on the day view 
    Then I should see "Zone-1"
    And I should see "Ad-1"
    And I should see "Views 4"
    And I should see "Hits 2"
    And I should see "CTR 50.0 %"
    And I should see "link to view" 

  Scenario: Show Zone stats
    Given I have 1 days stats
    And I am on the day view 
    Then I should see "Zone-1"
    And I should see "Views 4"
    And I should see "Hits 2"
    And I should see "CTR 50.0 %"

  Scenario: Show Ad stats 
    Given I have 1 days stats
    And I am on the day view 
    Then I should see "Ad-1"
    And I should see "Views 4"
    And I should see "Hits 2"
    And I should see "CTR 50.0 %"
