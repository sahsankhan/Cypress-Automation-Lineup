Feature: Scheduling

  Scenario: I want to add shift in non submitted plan
    Given I login in to Lineup.ai
    Then I should see Today's Progress Page
    When I click on "Planning" tab on the dashboard
    Then I should see "Weekly Planning" page
    When I click on non submitted plan with date "Oct 2 - Oct 8"
    And I click on "Create Schedule" button
    And I click on "Start From Scratch" button
    And I click on Add a Shift
    Then I should see "Add a Shift" modal
    When I fill in 'Add a Shift' modal with the following data:
      | role  | start time | end time | employee  | date       | shift break |
      | Grill | 10:30 AM   | 12:30 PM | zubair 12 | Mon, Oct 2 | 20          |
    And I click on Add button
    Then I "should" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    When I click shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    Then I should see "Update a Shift" modal
    When I click on "Delete" button
    Then I should see 'Delete Shift' modal
    When I click on "Delete Shift" button
    And I refresh page
    Then I "should not" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"


  Scenario: I want to delete shift in non submitted plan
    Given I login in to Lineup.ai
    Then I should see Today's Progress Page
    When I click on "Planning" tab on the dashboard
    Then I should see "Weekly Planning" page
    When I click on non submitted plan with date "Oct 2 - Oct 8"
    And I click on "Create Schedule" button
    And I click on "Start From Scratch" button
    And I click on Add a Shift
    Then I should see "Add a Shift" modal
    When I fill in 'Add a Shift' modal with the following data:
      | role  | start time | end time | employee  | date       | shift break |
      | Grill | 10:30 AM   | 12:30 PM | zubair 12 | Mon, Oct 2 | 20          |
    And I click on Add button
    Then I "should" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    When I click shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    Then I should see "Update a Shift" modal
    When I click on "Delete" button
    Then I should see "Delete Shift" modal
    When I click on "Delete Shift" button
    And I refresh page
    Then I "should not" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"


  Scenario: I want to update shift in non submitted plan
    Given I login in to Lineup.ai
    Then I should see Today's Progress Page
    When I click on "Planning" tab on the dashboard
    Then I should see "Weekly Planning" page
    When I click on non submitted plan with date "Oct 2 - Oct 8"
    And I click on "Create Schedule" button
    And I click on "Start From Scratch" button
    And I click on Add a Shift
    Then I should see "Add a Shift" modal
    When I fill in 'Add a Shift' modal with the following data:
      | role  | start time | end time | employee  | date       | shift break |
      | Grill | 10:30 AM   | 12:30 PM | zubair 12 | Mon, Oct 2 | 20          |
    And I click on Add button
    Then I "should" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    When I click shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    Then I should see "Update a Shift" modal
    When I fill in 'Add a Shift' modal with the following data:
      | role | start time | end time | employee  | date        | shift break |
      | Prep | 10:30 AM   | 12:30 PM | zubair 12 | Mon, Oct 2  | 20          |
    And I click on "Update" button
    Then I "should" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    When I click shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    Then I should see "Update a Shift" modal
    When I click on "Delete" button
    Then I should see "Delete Shift" modal
    When I click on "Delete Shift" button
    And I refresh page
    Then I "should not" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"


  Scenario: I want to add shift break in shift
    Given I login in to Lineup.ai
    Then I should see Today's Progress Page
    When I click on "Planning" tab on the dashboard
    Then I should see "Weekly Planning" page
    When I click on non submitted plan with date "Oct 2 - Oct 8"
    And I click on "Create Schedule" button
    And I click on "Start From Scratch" button
    And I click on Add a Shift
    Then I should see "Add a Shift" modal
    When I fill in 'Add a Shift' modal with the following data:
      | role  | start time | end time | employee | date        | shift break |
      | Grill | 10:30 AM   | 12:30 PM |  Test 3  | Mon, Oct 2  | 0           |
    And I click on Add button
    Then I "should" see shift card with employee name "Test 3" and shift time "10:30am-12:30pm"
    Then I should see weekly total "2 hrs" for row "Grill"
    When I click shift card with employee name "Test 3" and shift time "10:30am-12:30pm"
    Then I should see "Update a Shift" modal
    When I fill in 'Add a Shift' modal with the following data:
      | role  | start time | end time | employee  | date        | shift break |
      | Grill | 10:30 AM   | 12:30 PM | zubair 12 | Mon, Oct 2  | 20          |
    And I click on "Update" button
    Then I "should" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    Then I should see weekly total "1.7 hrs" for row "Grill"
    When I click shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"
    Then I should see "Update a Shift" modal
    When I click on "Delete" button
    Then I should see "Delete Shift" modal
    When I click on "Delete Shift" button
    And I refresh page
    Then I "should not" see shift card with employee name "zubair 12" and shift time "10:30am-12:30pm"


  Scenario: I want to see all employees regardless of their availability
    Given I login in to Lineup.ai
    Then I should see Today's Progress Page
    When I click on "Planning" tab on the dashboard
    Then I should see "Weekly Planning" page
    When I click on non submitted plan with date "Oct 2 - Oct 8"
    And I click on "Create Schedule" button
    And I click on "Start From Scratch" button
    And I click on Add a Shift
    And I "check" the checkbox
    And I click on Employee dropdown
    Then I should see the following data on the employee dropdown:
      | Employees |
      | Emma      |


  Scenario: I want to see only available employees
    Given I login in to Lineup.ai
    Then I should see Today's Progress Page
    When I click on "Planning" tab on the dashboard
    Then I should see "Weekly Planning" page
    When I click on non submitted plan with date "Oct 2 - Oct 8"
    And I click on "Create Schedule" button
    And I click on "Start From Scratch" button
    And I click on Add a Shift
    And I "uncheck" the checkbox
    And I click on Employee dropdown
    Then I should see the following data on the employee dropdown:
      | Employees |
      | Emma      |