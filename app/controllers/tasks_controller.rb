class TasksController < ApplicationController
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
		@taks.destroy
	end

	private 
		def task_params
			params.require(:task).permit(:title, :description, :priority, :category, :due,
				:start, :timelength, :reward, :autopriority)
		end
end
