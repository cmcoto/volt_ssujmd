class Message < Volt::Model
	own_by_user
	belongs_to :current_todo
	field :Time
	field :title, String
	field :body, String 
	     
end
