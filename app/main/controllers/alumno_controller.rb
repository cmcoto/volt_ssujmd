module Main
  
  
  class AlumnoController < Volt::ModelController
  def new
  	self.model = attrs.current_todo._alumnos.buffer	
  end

  def save
  	model.save!.then do
  		flash._notices << "Ya está inscrito"
  		new
  	end.fail do |err|
  		flash._notices << err.to_s
  	end
  end
end
end