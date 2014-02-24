module CoursesHelper

def createdCourses
  created_courses = Course.where(:user_id => current_user.id)

  # Course.all.each do |course|
  #   if course.user_id = current_user.id
  #   end
  # end
end

def enrolledCourses
  #not sure how to implement this yet

end

def allCategories
  @categories = Category.all
end

end
