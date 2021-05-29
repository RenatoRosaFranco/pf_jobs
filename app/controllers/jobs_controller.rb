# frozen_string_literal: true

class JobsController < ApplicationController
  before_action :set_job, only: [:show]
  respond_to :html, :json, :js

  def index
    @jobs = Job.active.recents
               .page(params[:page])
               .per(7)

    respond_with @jobs
  end

  def show
    respond_with @job = nil
  end

  private

  def set_job
    # @job = Job.friendly.find(params[:id])
  end
end