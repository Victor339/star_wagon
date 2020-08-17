class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :home]
  def home
  end
end
