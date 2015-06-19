class Message < Volt::Model
	own_by_user
	field :time, String
	field :title, String
	field :body, String 
	     
end
