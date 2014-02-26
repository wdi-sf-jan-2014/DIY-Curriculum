class ContentsController < ApplicationController
before_filter :authenticate_user!
skip_before_filter :verify_authenticity_token

def create
  new_content = params.require(:content).permit(:source_url, :text)
  section = Section.find(params[:section_id])
  @content = section.contents.create(new_content)

  # if @content.source_url.include? "youtube.com" 
  #   url = @content.source_url
  #   last = url.length
  #   first = last - 11
  #   embed_code = url[("#{first}".to_i)..("#{last}".to_i)].to_s
  #   @video_url = "http://www.youtube.com/embed/" + embed_code
  # end
  respond_to do |f|
    f.json { render :json => @content}
  end
end


def index
  @section = Section.find(params[:section_id])
  @all_content = @section.contents.all
end


def update
  updated_content = params.require(:content).permit(:source_url, :text)
  @section = Section.find(params[:section_id])
  @content = @section.contents.find(params[:id])
  redirect_to edit_course_section_path(@course,@section)
end



end
