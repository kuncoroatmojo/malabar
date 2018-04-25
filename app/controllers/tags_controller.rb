class TagsController < ApiController
  def index
    @tags = Tag.all
    json_response(@tags)
  end

  def show
    @tag = Tag.find(params[:id])
    json_response(@tag)
  end
end
