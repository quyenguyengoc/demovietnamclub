class RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  def new
    super
  end

  def new_user
    @resource = Member.new
  end

  def new_student
    @resource = Student.new
  end

  def create
    # add custom create logic here
    @resource = build_resource(sign_up_params)
    if params['user']['school_year'].nil?
      @resource.becomes!(Member)
    else
      @resource.becomes!(Student)
    end
    # build_resource(sign_up_params)
    @resource.save
    yield resource if block_given?
    if @resource.persisted?
      if @resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        # sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(@resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(@resource)
      end
    else
      # clean_up_passwords resource
      # set_minimum_password_length
      # respond_with resource
      render :new_user
    end
  end

  def resource
    @resource ||= User.new
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :register_date, :invoice, :enterprise_name, :address, :full_name, :position, :department, :tel, :fax, :url, :other, :gender, :birthday, :school_name, :education, :vocal, :school_year)
    end
  end
end 