
feature 'a list of bookmarks' do
  scenario 'by visiting bookmarks users can access a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://www.google.com")
  end
  scenario 'by visiting bookmarks users can access a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
  scenario 'by visiting bookmarks users can access a list of bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://www.makersacademy.com")
  end
end
