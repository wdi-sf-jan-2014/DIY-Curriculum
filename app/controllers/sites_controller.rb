class SitesController < ApplicationController
  def index
  @contents = Content.limit(3)
  end
end
