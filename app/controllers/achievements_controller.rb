class AchievementsController < ApplicationController
  
  def index 
    @achievements = Achievement.all
  end 

  def show 
    @achievement = Achievement.find(params[:id])
    # @image =  @achievement.image.attach(params[:image])
  end 
  

 def new 
  @achievement = Achievement.new 
 end 

 def create 
  achievement = Achievement.create(achievements_params)
  user = current_user.id
  achievement.update({user_id:user})
  redirect_to achievements_path
 end 

def edit 
  @achievement = Achievement.find (params[:id])
end 
def update
  @achievement=Achievement.find(params[:id])
  @achievement.update(achievements_params)
  redirect_to achievements_path

end 
 def destroy 
  
  @achievement=Achievement.find(params[:id])
  @achievement.destroy
  redirect_to achievements_path
 end 


 def achievements_params 
   params.require(:achievement).permit(:achievement, :note, :date, :image)
 end 
  
end 