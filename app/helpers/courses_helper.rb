module CoursesHelper

def createdCourses
  all_courses = Course.all
  created_courses = all_courses.where(:user_id => current_user.id)

  # Course.all.each do |course|
  #   if course.user_id = current_user.id
  #   end
  # end
end

def enrolledCourses
  #not sure how to implement this yet
end

end
