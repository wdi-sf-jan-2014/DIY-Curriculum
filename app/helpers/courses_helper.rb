module CoursesHelper

def createdCourses
  @created_courses = Course.where(:author_id => current_user.id)

end

def enrolledCourses
  enrollment_ids = Enrollment.where(:user_id => current_user.id)
  @enrolled_courses = []
  enrollment_ids.each do |enrollment|
    course = Course.find(enrollment.course_id)
    if course.author_id != current_user.id
      @enrolled_courses << Course.find(course.id)
    end
  end
  return @enrolled_courses

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
