module ApplicationHelper
  def logged_in?
    ( current_user.present? ) ? dashboard_path : root_path
  end

  def has_errors?(model)

  end

  def format_date(date)
    date.strftime("%d/%m/%Y")
  end
end
