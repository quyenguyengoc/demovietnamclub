class HomeController < ApplicationController
  def index
    @home_events = Content.find_by slug: 'home_event'
    @about_vietnam = Content.find_by slug: 'about_vietnam'
  end
end