RSpec.feature 'Uniquenes' do
  context 'Signing up for an account'

  before do
    User.create(email: "Test@testing.com", username: 'Tester', password: "Password483")
  end

  scenario 'A user cannot signup with an existing email or username' do
    signup
    expect(page).to have_content("We already have this email.")
    expect(page).to have_content("We already have this username.")
  end
end
