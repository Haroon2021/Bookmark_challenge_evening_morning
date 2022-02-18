feature 'To add a new bookmark' do
    scenario 'As a user I want to add bookmarks' do
        visit('/bookmarks/new')
        fill_in('url', with: 'http://www.google.com')
        click_button('Submit')
        expect(page).to have_content 'http://www.google.com'
    end
end