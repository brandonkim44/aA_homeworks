class UserMailer < ApplicationMailer #like applicationcontroller, note: User is singularhere
    default from: 'App Academy <everybody@appacademy.io>' #creates default from email
    def welcome_email(user) #takes user instance as an argument
        @user = user #why do we do this?
        @url = new_session_url
        mail(to: @user.email, subject: "Welcome to 99 Cats!")
    end
end
