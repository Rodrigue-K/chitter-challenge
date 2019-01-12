require './spec/support/matchers'

feature 'Timeline' do

  before do
  User.create(email: "Test@testing.com", username: 'Tester', password: "Password483")
  end

  scenario 'Posted peeps are displayed on a in chronological order' do
    signin
    post_peep('This peep was posted first')
    post_peep('This peep was posted second')
    expect('This peep was posted second').to appear_before(
      'This peep was posted first'
           )
  end
end
