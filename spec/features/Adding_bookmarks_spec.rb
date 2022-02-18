feature 'To add a new bookmark' do
    scenario 'As a user I want to add bookmarks' do
        visit('/bookmarks/new')
        fill_in('url', with: 'http://www.google.com')
        fill_in('title', with: 'google')
        click_button('Submit')
        expect(page).to have_content 'google'
    end
end