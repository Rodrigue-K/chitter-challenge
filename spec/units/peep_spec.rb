require 'peep'

describe Peep do
  let!(:peep) { Peep.create(post: 'Hello, Chitter!') }
  it 'can create a post' do
    expect(peep.post).to eq 'Hello, Chitter!'
  end

  it 'has to be between 7 - 40 characters in length' do
    blank_post = Peep.new(post: '')
    short_post = Peep.new(post: 'short')
    long_post = Peep.new(post:
      'A post longer than forty characters will not be validated')
    valid_post = Peep.new(post: "This post is about forty characters long")
    expect(blank_post.valid?).to eq false
    expect(long_post.valid?).to eq false
    expect(short_post.valid?).to eq false
    expect(valid_post.valid?).to eq true
  end
end
