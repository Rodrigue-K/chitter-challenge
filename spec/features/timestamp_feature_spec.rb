# feature 'Timestamp' do
#   let!(:peep) do
#      Peep.create(post: 'This is a test',
#                  created_on: Time.now,
#                  created_at: Time.now
#                 )
#   end
#
#   scenario 'Peeps have a timestamp to show when it was posted' do
#     visit('/')
#     signin
#     expect(page).to have_content(Time.now)
#   end
# end
