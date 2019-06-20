class AchievementsController < ApplicationController
  
  def index 
    @achievements = current_user.achievements
  end 

  def show 
    @achievement = current_user.achievements.find(params[:id])
    # @image =  @achievement.image.attach(params[:image])
  end 
  

 def new 
  @achievement = current_user.achievements.new 
 end 

 def create 
  current_user.achievements.create(achievements_params)
  redirect_to achievements_path
 end 

def edit 
  @achievement = current_user.achievements.find(params[:id])
end 


def update
  @achievement= current_user.achievements.find(params[:id])
  @achievement.update(achievements_params)
  

  redirect_to achievements_path

end 
 def destroy 
  
  @achievement=current_user.achievements.find(params[:id])
  @achievement.destroy
  redirect_to achievements_path
 end 


 def achievements_params 
   params.require(:achievement).permit(:achievement, :note, :date, :image)
 end 
  
end 