# frozen_string_literal: true

module Dashboard
  class JobsController < HomeController
    before_action :set_job, only: [:edit, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :not_found
    respond_to :html, :json, :js

    def index
      @jobs = current_user.jobs
    end

    def new
      @job = Job.new
      respond_with :dashboard, @job
    end

    def show
      respond_with :dashboard, @job
    end

    def edit
      respond_with :dashboard, @job
    end

    def update
      @job.update(job_params)
      respond_with :dashboard, @job
    end

    def destroy
      @job.destroy
      redirect_to  :dashboard, notice: 'Vaga removida com sucesso.'
    end

    private

    def set_job
      @job = current_user.jobs
                         .friendly
                         .find(params[:id])
    end

    # Adicionar Attributos da vaga
    # @implemented
    def job_params
      params.require(:job)
        .permit()
    end
  end
end