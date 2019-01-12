feature 'User sign up' do
  scenario 'Maker wants to sign up to use Chitter' do
    visit('/')
    click_link 'Sign Up'
    fill_in 'email', with: 'Test@testing.com'
    fill_in 'username', with: 'Tester'
    fill_in 'password', with: 'Password483'
    click_button 'Sign Up'
    expect(page).to have_content('Logged in as Tester')
  end
end
