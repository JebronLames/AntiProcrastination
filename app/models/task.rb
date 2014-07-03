# Defines and validates tasks
class Task < ActiveRecord::Base

	before_save :default_values
	# Sets default values for done
	def default_values
		self.done ||= 'false'
		self.flag ||= 'false'
	end
	validates :title, presence: true 
	validates :description, length: {maximum: 560}
end
