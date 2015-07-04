class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :create_template_parameter

  def create_template_parameter
    @tmpl = Hashie::Mash.new({})
  end
end
