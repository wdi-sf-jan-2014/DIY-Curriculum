class SitesController < ApplicationController
  include CoursesHelper

  def index
  @contents = Content.limit(3)
  end
end
