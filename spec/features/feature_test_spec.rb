
feature 'a list of bookmarks' do
  scenario 'by visiting bookmarks users can access a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("google.com")
  end
end
