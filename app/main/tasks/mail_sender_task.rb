class MailSenderTask < Volt::Task
	def send(first)
		Mailer.deliver('/app/main/views/mailers/first.email', {to: 'cmcoto@gmail.com'}) 
    	flash._errors << "Sending Your Message!"
	end
end
