feature 'Adding a new bookmark' do
  scenario 'The user can add a bookmark'do
    visit('/bookmarks')
    fill_in('url', with: "http://www.snakersacademy.com")
    fill_in('title', with: 'Snakers Academy')
    click_button('Submit')

    expect(page).to have_link('Snakers Academy', href: 'http://www.snakersacademy.com')

  end
end
