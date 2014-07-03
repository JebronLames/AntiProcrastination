# Actions that can be done to a task
class TasksController < ApplicationController
helper_method :sort_column, :sort_direction

	# Changes the boolean "done" when the done button is clicked
	def flop 
		@tasks = Task.find(params[:id])
		@tasks.done = !@tasks.done
		@tasks.save
		redirect_to tasks_path
	end

	# Empty method for new task (placeholder)
	def new
	end

	# Shows task
	def show
		@task = Task.find(params[:id])
	end 

	# Calls helper functions that will sort tasks by various parameters
	def index
		@tasks = Task.order(sort_column + " " + sort_direction)

	end

	# Creates a new task if the sumbit button is clicked, or goes back to the tasks if 'back' is clicked
	def create 
		#render plain: params[:task].inspect
		@task = Task.new(task_params)
		if @task.save
			redirect_to @task
		else
			render 'new'
		end  
	end

	# Deletes a task
	def destroy 
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to tasks_path
	end

	# Creates a new task with the current parameters filled in and deletes old task. Form will be filled in when that screen comes up.
	def edit
		@task = Task.find(params[:id])
		@task.destroy
	end

	private 

		# Parameters for the tasks (not all used)
		def task_params
			params.require(:task).permit(:title, :description, :priority, :category, :due,
				:start, :timelength, :reward, :autopriority, :done)
		end

		# Variable for the helper functions to use (for sorting)
		def sort_column
			Task.column_names.include?(params[:sort]) ? params[:sort] : "title"
		end

		# Another variable for the sorting helper function
		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
end
