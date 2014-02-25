class ContentsController < ApplicationController
before_filter :authenticate_user!

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
end



end