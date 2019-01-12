feature 'User sign up' do
  context 'Sign up' do
  scenario 'Maker wants to sign up for an account' do
    signup
    expect(page).to have_content("Logged in as, Tester")
  end
end
end
