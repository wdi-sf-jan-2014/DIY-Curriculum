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

# def uniqueCourses
#   all_courses = Course.all

#   course_guids = []
#   all_courses.each do |course|
#     course_guids << course.guid
#   end

#   if course_guids.uniq! == nil
#     return all_courses
#   else
#     uniq_course_guids = course_guids.uniq!
#     uniq_course_guids.each do |guid|
#       @unique_courses = Course.find_by_guid(guid)
#     end
#   end

# end

end
