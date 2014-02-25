module CoursesHelper

def createdCourses
  created_courses = Course.where(:author_id => current_user.id)

  # Course.all.each do |course|
  #   if course.user_id = current_user.id
  #   end
  # end
end

def enrolledCourses
  enrolled_courses = Course.where(:user_id => current_user.id)
  enrolled = []

  enrolled_courses.each do |course|
    if course.user_id != current_user.id
      enrolled << course
    end
  end

  return enrolled
  
end

def allCategories
  @categories = Category.all
end

end
