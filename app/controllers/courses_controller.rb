class CoursesController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

include CoursesHelper

def index
  @created_courses = createdCourses(current_user) 
end




end
