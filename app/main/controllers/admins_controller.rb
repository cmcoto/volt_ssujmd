module Main
  class AdminsController < Volt::ModelController
  	def ensure_admin!
  		Volt
  			.fetch_current_user
    		.then do |user|
				oh_no!(user) unless user._admin
			end
		end
	def oh_no!(user)	
		flash._errors << "Get out of here, guy!"
  		redirect_to "/"
  	end

  end
end
