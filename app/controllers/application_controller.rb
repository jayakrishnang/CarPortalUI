class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
  Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect}"
  # ...
end
def after_sign_in_path_for(resource)
      if current_user.role.name == "admin"
        return admin_path
      else
        return root_path
      end
    end


end
