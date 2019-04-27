class TasksController < ApplicationController

  def index 
     
     @tasks = Task.all 
     render "index.json.jbuilder"

  end 


  def create 
    
    @task = Task.new(
        
       description: params[:description],
       user_id: params[:user_id]
 
      )

    if @task.save
       render "task.json.jbuilder"
    else 
       render json:{mess: "Task is not created"}
    end 
 
  end 





end
