class PointsController < ApplicationController

  before_filter :authenticate

  def create
    @point = current_user.points.build( {:post_id => params[:post_id]} ) 
    @point.save
    redirect_to :back  
  end

  private

   def authenticate
     deny_access unless signed_in?
   end


end 
