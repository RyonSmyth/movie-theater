class UserMailer < ApplicationMailer
	
	def welcome_email(user)
   	  @user = user
   	  mail(:to => user.email, :subject => "Welcome to SoCal Theater!")
 	end
	def contact_form(email, name, message)
	  @message = message
	  mail(:from => email,
	   :to => 'ryans970@homtail.com',
	   :subject => "SoCal Theater Message from #{name}")
	end

	def thank_you
		@name = params[:name]
		@email = params[:email]
		@message = params[:message]
		UserMailer.contact_form(@email, @name, @message).deliver
	end
end
