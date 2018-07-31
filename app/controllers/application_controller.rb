class ApplicationController < ActionController::Base


  def current_user 
    @current_user ||= User.first_or_create(
      first_name: "Chris",
      last_name: "Dundon",
      unit: "Basement",
      manager: true
    )
  end
end
