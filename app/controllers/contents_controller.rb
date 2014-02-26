class ContentsController < ApplicationController
before_filter :authenticate_user!
skip_before_filter :verify_authenticity_token

def create
  new_content = params.require(:content).permit(:source_url, :text)
  section = Section.find(params[:section_id])
  @content = section.contents.create(new_content)

  respond_to do |f|
    f.json { render :json => @content}
  end
end


def index
  @section = Section.find(params[:section_id])
  @all_content = @section.contents.all
  respond_to do |f|
    f.json{ render :json => @all_content}
  end
end


def update
  updated_content = params.require(:content).permit(:source_url, :text)
  @section = Section.find(params[:section_id])
  @content = @section.contents.find(params[:id])
  redirect_to edit_course_section_path(@course,@section)
end



end
