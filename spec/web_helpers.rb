def post_peep(post)
  visit('/')
  fill_in "post", with: post
  click_button "share"
end
