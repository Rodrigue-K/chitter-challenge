require 'user'

describe User do
  let!(:user) { User.create(email: "Test@testing.com", username: 'Tester', password: "Password483") }

  describe '#authenticate' do
    it "returns nil if user doesn't exist" do
      expect(User.authenticate('wrongusername', 'wrongpassword')).to eq(nil)
    end

    it "returns nil if wrong password" do
      expect(User.authenticate('wrongusername', 'wrongpassword')).to eq nil
    end

    it 'returns the user if user exists and password is correct' do
      expect(User.authenticate('Tester', 'Password483')).to eq(user)
    end
  end
end
