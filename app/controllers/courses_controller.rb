class CoursesController < ApplicationController
before_filter :authenticate_user!, except: [:show]

def index
  @created_courses = createdCourses(current_user) 
end




end
