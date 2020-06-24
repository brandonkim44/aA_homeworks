require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { User.new(email: "test@gmail.com", password: "password123") }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }
  it { should validate_uniqueness_of(:email) }
  # it { should validate_uniqueness_of(:session_token) }
  # it { should validate_uniqueness_of(:session_token).scoped_to(:email) }

  it "creates a password digest when a password is given" do
      expect(user.password_digest).to_not be_nil
  end

  it "ensures token_session is created after initialization if user is valid" do
    user.valid?
    expect(user.session_token).to_not be_nil
  end
  #didn't write this method in my own user.rb lmao
  # describe "#is_password?" do 
  #   it "should confirm that a password is correct" do 
  #     result = user.is_password?("password123")
  #     expect(result).to be true
  #   end

  #   it "should confirm if the password is incorrect" do 
  #     result = user.is_password?("wrong_password")
  #     expect(result).to be false
  #   end

    describe "#reset_session_token!" do
      it "should set session token for a user to a new token" do
        user.valid? #why check for validity?
        old_session_token = user.session_token
        user.reset_session_token!
        expect(user.session_token).to_not eq(old_session_token)
      end

      it "should return the user's session token" do
          user.valid?
          expect(user.reset_session_token!).to eq(user.session_token)
      end
    end

  
end
