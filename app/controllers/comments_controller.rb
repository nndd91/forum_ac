class CommentssController < ApplicationController
  before_action :set_topic

  def index
    render html: @topic.comments.pluck(:id)
  end
  
  def show
    render html: @topic.commments.find(params[:id])
  end

  private

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end
  

end
