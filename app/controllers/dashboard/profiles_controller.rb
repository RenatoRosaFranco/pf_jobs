# frozen_string_literal: true

module Dashboard
  class ProfilesController < HomeController

    def edit
      @profile = current_user.profile
    end

    def update
      @profile.update(profile_params)
    end

    private

    def profile_params
      params.require(:profile)
        .permit(:logo, :name, :description, :phone, :website, :state_id, :city_id)
    end
  end
end 