class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def welcome
		render text: "Lapdog\'s Site, taking people in the know straight back out of the know..."
	end

end
