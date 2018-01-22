class SwitchLanguageController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    language = language_params
    cookies[:vietnam_club_language] = language
    render json: {success: true}
  end

  private
  def language_params
    params.require(:language)
  end
end
