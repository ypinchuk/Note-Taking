require 'rails_helper.rb'

feature "Notetaker adds a note" do
    scenario "Notetaker successfully navigates to the new notes page from the listing notes page" do
        visit notes_path
        expect(page).to have_content("Listing Notes")
        click_link "New Note"
        expect(page).to have_content("New Note")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    
    scenario "Notetaker successfully creates a new note" do
        visit new_note_path
        expect(page).to have_content("New Note")
        fill_in "Title", with: "New Capybara Note"
        fill_in "Text", with: "This is a new Capybara note"
        click_button "Create Note"
        expect(page).to have_content("New Capybara Note")
        expect(page).to have_content("This is a new Capybara note")
    end

end