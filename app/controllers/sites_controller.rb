class SitesController < ApplicationController
  def index
  @contents = Content.all
  end
end
