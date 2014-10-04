class MicropostsController < ApplicationController
  before_action :signed_in_user

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Success!"
    redirect_to current_user
    else
      flash[:error] = "Oh noes, something went wrong, pelase try that again"
    redirect_to current_user
    end
  end

  def destroy
  end

  private

  def micropost_params
    params.require(:micropost).permit(:content, :photo, :photo2)
  end
end
