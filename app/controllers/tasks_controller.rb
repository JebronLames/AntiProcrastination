class TasksController < ApplicationController
helper_method :sort_column, :sort_direction

	def new
	end

	def show
		@task = Task.find(params[:id])
	end 

	def index
		@tasks = Task.all

	end


	def create 
		#render plain: params[:task].inspect
		@task = Task.new(task_params)
		if @task.save
			redirect_to @task
		else 
			render 'new'
		end  
	end

	def destroy 
		@task = Task.find(params[:id])
		@task.destroy
	end

	def edit
		@task = Task.find(params[:id])
		@task.destroy
	end

	private 
		def task_params
			params.require(:task).permit(:title, :description, :priority, :category, :due,
				:start, :timelength, :reward, :autopriority)
		end

		def sort_column
			Task.column_names.include?(params[:sort]) ? params[:sort] : "name"
		end

		def sort_direction
			%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
		end
end
