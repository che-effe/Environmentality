class StaticPagesController < ApplicationController
  # def home
  #   if signed_in?
  #     redirect_to current_user
  #   end
  # end

  def home
    @micropost = current_user.microposts.build if signed_in?

    @user = User.new

  end

  def help
  end

  def about
  end

  def contact
  end
end
