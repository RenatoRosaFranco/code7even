require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  add_flash_types :success, :info, :error
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
     #I8ln.locale = params[:locale] || Il8n.default_locale
  end

  def default_url_params
    {locale: 'en'}
  end

end
