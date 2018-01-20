class CategoriesController < ApplicationController
  def show
    @category = get_category
    @home_events = (Content.find_by slug: 'home_event') if @category.title == 'Vietnam Bussiness Club'
    @about_vietnam = Content.find_by slug: 'about_vietnam'
    @vfsc_contents = (Content.where slug: 'vfsc_contents') if @category.title == 'Vietnam Foreign Student Club'
  end

  private

  def get_category
    Category.find params['id']
  end
end