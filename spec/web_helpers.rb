def post_peep(post)
  fill_in "post", with: post
  click_button "share"
end

def signin
  visit('/')
  click_link 'Sign in'
  fill_in 'username', with: 'Tester'
  fill_in 'password', with: 'Password483'
  click_button 'Sign in'
end

def signup
  visit('/')
  click_link 'Sign up'
  fill_in 'email', with: 'Test@testing.com'
  fill_in 'username', with: 'Tester'
  fill_in 'password', with: 'Password483'
  click_button 'Sign Up'
end

def unregistered_account
  visit('/')
  click_link 'Sign in'
  fill_in 'username', with: 'unregistered'
  fill_in 'password', with: 'Pleaseregister'
  click_button 'Sign in'
end

def incorrect_password_sign_in
  visit('/')
  click_link 'Sign in'
  fill_in 'username', with: 'Tester'
  fill_in 'password', with: 'Password483'
  click_button 'Sign in'
end
