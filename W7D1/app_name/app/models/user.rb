class User < ApplicationRecord
    require 'bcrypt'
    require 'securerandom'

    attr_reader :password

    validates :username, presence: true
    validates :session_token, presence: true
    validates :password_digest, presence: { message: 'Password can\'t be blank'}
    validates :password, length: { minimum: 7, allow_nil: true }
    before_validation :ensure_session_token

    def self.find_by_credentials(username, password)
        @user = User.find_by(username: username)
        return @user if @user && BCrypt::Password.new(@user.password_digest).is_password(password) #if user exists in DB and password matches
        nil #@user.password_digest is string and long with meta-data + salt + checksum (hash) 
        #BCrypt::Password.new will take the password_digest and turn it back into the string format and checks to see if it is equal to input password going through hashing
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def password=(password)
        @password = password
        self.password_digest = BCrpyt::Password.create(password) #password will be in string format
    end
end