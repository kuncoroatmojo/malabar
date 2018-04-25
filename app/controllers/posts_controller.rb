class PostsController < ApiController
  def index
    @posts = Post.all
    json_response(@posts)
  end

  def show
    @post = Post.find(params[:id])
    json_response(@post)
  end
end
