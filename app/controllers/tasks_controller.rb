class TasksController < ApplicationController

 
  def index 
     
     @tasks = Task.all 
     render "index.json.jbuilder"

  end 


  def create 
    
    @task = Task.new(
        
       description: params[:description],
       user_id: 2
 
      )

    if @task.save
       render "task.json.jbuilder"
    else 
       render json:{mess: "Task is not created"}
    end 
 
  end 


  def view_tasks

   
    @tasks = Task.where(user_id: current_user.id)

    render "elon_task.json.jbuilder"

    
  end 





end
