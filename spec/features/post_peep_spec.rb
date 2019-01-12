feature 'Posting peep' do
  scenario 'Maker posts a peep to the Chitter timeline' do
    visit('/')
    fill_in "post", with: "Hello, Chitter!"
    click_button "share"
    expect(page).to have_content("Hello, Chitter!")
  end
  scenario 'Maker posts a peep that is longer than 40 characters' do
    visit('/')
    fill_in "post", with: "A journey of a thousand miles begins with one step."
    click_button "share"
    expect(page).not_to have_content(
      "A journey of a thousand miles begins with one step.")
  end

  scenario 'Maker posts a peep that is shorter than 7 characters' do
    visit('/')
    fill_in "post", with: "A  "
    click_button "share"
    expect(page).not_to have_content("A  ")
  end

  scenario 'Maker canot post a blank peep' do
    visit('/')
    fill_in "post", with: '      '
    click_button "share"
    expect(page).not_to have_content('      ')
  end

  scenario 'Maker wants to know the time they posted a peep' do
    visit('/')
    fill_in "post", with: 'What time did I post this'
    click_button "share"
    expect(page).to have_content('13-01-19 10:00')
  end



end
