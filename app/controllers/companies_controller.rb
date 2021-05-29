# frozen_string_literal: true

class CompaniesController < ApplicationController
  before_action :set_company, only: [:show]
  respond_to :html, :json, :js

  def index
    @companies = User.recents
                     .page(params[:page])
                     .per(20)
  end

  def show
    respond_with @company
  end

  private

  def set_company
    @company = User.find(params[:id])
  end
end