Feature: Add a new note
  
  As a note-taker
  So that I can easily contribute content to my notes
  I want to be able to add a new note
  
Scenario: As a note-taker I want to be able to navigate from the homepage to the new note form
  Given I am on the home page
  When I click on the "My Notes" link
  Then I should be on the "Listing Notes" page
  When I click on the "New Note" link
  Then I should be on the "New Note" page
  And I should see the "Title" field
  And I should see the "Text" field