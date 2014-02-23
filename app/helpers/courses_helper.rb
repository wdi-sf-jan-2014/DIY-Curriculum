module CoursesHelper

def createdCourses
  all_courses = Course.all
  # created_courses = all_courses.where(:user_id => user.id)
end

def enrolledCourses(user)
  #not sure how to implement this yet
end

end
