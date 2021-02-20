class TasksController < ApplicationController
 def index
    @tasks = Task.all 
 end
 def show 
    @task = Task.find(params[:id])   
 end
 

 def new
     @tasks = Task.new
 end
 def create
     @task = Task.new(task_params)
     @task.save
     redirect_to tasks_url

 end

 def edit
     @tasks = Task.find(params[:id])
 end
 
 def update
     @task = Task.update(task_params)
     redirect_to task_url(@task)
 end
 
 def destroy
    @task.destroy
    redirect_to task_url
     
 end
#  def completed_task
#     @task.completed = true
#     @task.save 
#     redirect_to tasks_path
#  end
 
 
 private

 def task_params
    params.require(:task).permit(:title, :details)
     
 end
 
 
 
 
 
end
