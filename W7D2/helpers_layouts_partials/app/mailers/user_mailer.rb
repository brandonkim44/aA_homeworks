class UserMailer < ApplicationMailer #like applicationcontroller, note: User is singularhere
    default from: 'App Academy <everybody@appacademy.io>' #creates default from email
    def welcome_email(user) #takes user instance as an argument
        @user = user #why do we do this?
        @url = "http//localhost:3000/session/new"
        mail(to: @user.username, subject: "Welcome to 99 Cats!")
    end
end
