class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_language

  def load_language
    I18n.default_locale = cookies[:vietnam_club_language] || I18n.available_locales[0]
  end
end
