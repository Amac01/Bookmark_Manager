feature 'DELETING a bookmark' do
  before(:each) do
    add_bookmarks
  end
  scenario 'user deletes a bookmark' do
    visit '/bookmarks'
    expect(page).to have_link("Google", href: 'http://www.google.com')
    click_button 'delete Google'
    expect(page).not_to have_link("Google", href: 'http://www.google.com')
  end
end
