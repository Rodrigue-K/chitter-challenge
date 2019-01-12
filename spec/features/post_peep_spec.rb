feature 'Peep' do
  before do
    User.create(email: "Test@testing.com", username: 'Tester', password: "Password483")
  end

  context "Posting" do
    scenario 'Maker posts a peep to the Chitter timeline' do
      visit('/')
      signin
      expect(current_path).to eq '/profile'
      post_peep('This is a test')
      expect(page).to have_content('This is a test')
    end
  end
end

#   scenario 'Maker posts a peep that is longer than 40 characters' do
#     signin
#     post_peep("A journey of a thousand miles begins with one step.")
#     expect(page).not_to have_content(
#       "A journey of a thousand miles begins with one step.")
#   end
#
#   scenario 'Maker posts a peep that is shorter than 7 characters' do
#     signin
#     post_peep("A  ")
#     expect(page).not_to have_content("A  ")
#   end
#
#   scenario 'Maker cannot post a blank peep' do
#     signin
#     post_peep('      ')
#     expect(page).not_to have_content('      ')
#   end
# end
