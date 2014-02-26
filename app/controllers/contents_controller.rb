class ContentsController < ApplicationController
before_filter :authenticate_user!
skip_before_filter :verify_authenticity_token

def index
  section = Section.find(params[:section_id])
  @contents = section.contents
    respond_to do |f|
      f.html
      f.json { render :json => @contents}
    end
end

def new
end

def create
  new_content = params.require(:content).permit(:source_url, :text)
  section = Section.find(params[:section_id])
  @content = section.contents.create(new_content)

  respond_to do |f|
    f.json { render :json => @content}
  end
end

def update
  updated_content = params.require(:content).permit(:source_url, :text)
  @section = Section.find(params[:section_id])
  @content = @section.contents.find(params[:id])
  redirect_to edit_course_section_path(@course,@section)
end

end
