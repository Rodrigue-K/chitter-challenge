RSpec.feature 'Sign in' do
  context 'User authentication'

  before do
    User.create(email: "Test@testing.com", username: 'Tester', password: "Password483")
  end

  scenario 'Maker wants to sign in to use Chitter' do
    visit('/')
    click_link 'Sign in'
    fill_in 'username', with: 'Tester'
    fill_in 'password', with: 'Password483'
    click_button 'Sign in'
    expect(page).to have_content("Logged in as, Tester")
  end

  scenario 'User without a registered account attempts to log in' do
    unregistered_account
    expect(current_path).to eq '/'
  end
end
