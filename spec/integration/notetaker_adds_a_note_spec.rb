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

end