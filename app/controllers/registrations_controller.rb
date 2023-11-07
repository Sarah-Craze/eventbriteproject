class RegistrationsController < ApplicationController
  include Devise::Controllers::Helpers
  respond_to :html, :json

  def new
    @user = User.new
    @resource_name = "user"  # Remplacez "user" par le nom de votre modèle Devise
    respond_with @user
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end


