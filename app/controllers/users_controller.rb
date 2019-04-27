class UsersController < ApplicationController
  

  def index 
    
  @users = User.all 

  render "user.json.jbuilder"

  end 


  def create 
   
    @user = User.new(
         
         name: params[:name]
      )

  if  @user.save 
    render json:{mess: "User has been saved!"}
  end 


  end 


  def update
    
     @user = User.find_by(name: params[:name])

     @user.name = params[:namee] || @user.name

    if @user.save

    render "user.json.jbuilder"

    else 
      render json:{mess: "Didn't save"}
    end 
 
  end 


  def del
    @user = User.find_by(id:params[:id])

    if @user.destroy
      render json:{mess: "The User has been removed!"}
    end 
 
  end 



  def user_tasks
    
    @user = User.find_by(name: params[:name])

    render "user_task.json.jbuilder"

  end 


end
