# frozen_string_literal: true

module Dashboard
  class ProfilesController < HomeController
    before_action :set_profile, only: [:edit, :update]
    respond_to :html, :json, :js

    def edit
      respond_with :dashboard, @profile
    end

    def update
      @profile.update(profile_params)
      redirect_to edit_dashboard_profile_path @profile, notice: 'Perfil atualizado com sucesso.'
    end

    private

    def set_profile
      @profile = current_user.profile
    end

    def profile_params
      params.require(:profile)
        .permit(:logo, :name, :description, :phone, :website, :state_id, :city_id)
    end
  end
end 