Feature: Process wood plank
  Scenario: User processes a wood plank
    Given the wood is loaded onto the machine
    And the desired thickness is set
    When the user presses the "Start Processing" button
    Then the machine should process the wood
    And the wood should come out at the specified thickness

Feature: Adjust feed speed
  Scenario: User adjusts the feed speed to 5 units
    Given the machine is processing wood
    When the user sets the feed speed to 5 units
    Then the machine should adjust the conveyor speed to 5 units
    And the processing time should be updated accordingly


Feature: Pause wood processing
  Scenario: User pauses the machine during processing
    Given the machine is processing wood
    When the user presses the "Pause" button
    Then the machine should pause processing
    And display "Processing paused" on the screen


Feature: Resume wood processing
  Scenario: User resumes the machine after pausing
    Given the machine is paused
    When the user presses the "Resume" button
    Then the machine should continue processing from where it left off


Feature: Clean wood processing machine
  Scenario: User cleans the machine
    Given the machine is turned off
    When the user follows the cleaning protocol
    Then all parts of the machine should be free of wood dust and debris
    And the display should show "Machine cleaned"
