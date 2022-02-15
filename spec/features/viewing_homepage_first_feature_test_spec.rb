
feature 'Display Bookmarks' do
    scenario 'See the word bookmark on the homepage' do
        visit('/')
        expect(page).to have_content "Bookmark Manager"
    end
end
    