class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render text: "hello, world!!"
  end

  def after_sign_in_path_for(resource)
    dashboards_path
  end

end
