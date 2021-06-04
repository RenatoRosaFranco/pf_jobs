# frozen_string_literal: true

class JobAlertsController < ApplicationController

  def create
    binding.pry
    job_alert = JobAlert.find_or_create_by(email: alert_params[:email])
    redirect_to "#{request.env['HTTP_REFERER']}", notice: 'Você se cadastrou com sucesso.'
  end

  private

  def alert_params
    params.require(:alert).permit(:email, :alerteable_id, :alerteable_type)
  end
end