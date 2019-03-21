class AuthController < ApplicationController
  def create
    @vk = auth_hash
    @vkuser = VkUser.find_by(vk_uid: auth_hash[:uid])
    if @vkuser
      session[:vk_user_id] = @vkuser.id
    else
    end
    redirect_to root_path
  end

  def vkontakte
  end

  def facebook
  end



protected

  def auth_hash
    request.env['omniauth.auth']
  end

end
