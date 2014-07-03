# Helper functions for application_controller
module ApplicationHelper
	# Sorts the tasks by column in either ascending or descending order
	def sortable(column, title = nil)
	  title ||= column.titleize
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  link_to title, {:sort => column, :direction => direction}
	end
end
