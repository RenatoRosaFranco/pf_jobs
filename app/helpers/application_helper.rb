module ApplicationHelper
  def logged_in?
    ( current_user.present? ) ? dashboard_path : root_path
  end
end
