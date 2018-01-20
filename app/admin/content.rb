ActiveAdmin.register Content do
  permit_params :title, :slug, :body
  before_action :remove_null_bite, only: [:create, :update]

  controller do
    def remove_null_bite
      params['content']['body'].gsub!(/\0/, '')
      params['content']['title'].gsub!(/\0/, '')
    end
  end

end
