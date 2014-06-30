class Task < ActiveRecord::Base

	before_save :default_values
	def default_values
		self.done ||= 'false'
		self.flag ||= 'false'
	end
	validates :title, presence: true 
	validates :description, length: {maximum: 560}
end
