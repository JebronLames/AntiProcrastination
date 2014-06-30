class Task < ActiveRecord::Base
	before_save :default_values
	def default_values
		self.done ||= 'false'
	end
	validates :title, presence: true
end
