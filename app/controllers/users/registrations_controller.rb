class Users::RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  protected

  # my custom fields are :name, :heard_how
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation, 
        :address, :image, :is_player, :age,:mobile,:exp,:desc,:min_bid,:max_bid,:balance)
    binding.pry
    end

    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :email, :password, :password_confirmation, :address, :image, 
        :is_player, :age,:mobile,:exp,:desc,:min_bid,:max_bid,:balance,:current_password)
    end

  end
end