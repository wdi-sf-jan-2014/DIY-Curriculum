class SitesController < ApplicationController
  include CoursesHelper

  def index
  @contents = Content.limit(3)
  @index_page = true;
  end
end
