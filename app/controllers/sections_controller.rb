class SectionsController < ApplicationController
before_filter :authenticate_user!, except: [:index, :show]

  def index

    @course = Course.find(params[:course_id])
    @category = Category.find(@course.category_id)
    @sections = @course.sections
    respond_to do |f|
      f.html
      f.json { render :json => @sections }
    end

  end

  def show
    @course = Course.find(params[:course_id])
    @category = Category.find(@course.category_id)
    @section = Section.find(params[:id])
  end

  def new
    course = Course.find(params[:course_id])
    @sections = course.sections
    respond_to do |f|
      f.html
      f.json { render :json => @sections }
    end
  end

  def create
    new_section = params.require(:section).permit(:title)
    @section = Section.create(new_section)
    course = Course.find(params[:course_id])
    @section.course_id = course.id
    @section.save
    respond_to do |f|
      f.json { render :json => @section }
    end
    # redirect_to course_sections_path(course)
  end

  def edit
  end

  def update
  end

  def delete
  end


end
