class Alumno < Volt::Model
	validate :name, length: 2

	belongs_to :current_todo

	permissions(:update) { deny }
	permissions(:delete) 
	
	
end
