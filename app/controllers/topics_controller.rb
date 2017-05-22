class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    # body = ""
    # @topics.each do |i|
    #    body += "<h2>Topic " + i.id.to_s + ": " + i.body + "</h2><br><br>Comments:"
       
    #    @comments = i.comments.all
    #    @comments.each do |j|
    #      body += "<br>" + User.find(j.user_id).firstname + ": " + j.body
    #    end
        
    #   body += "<br><br><hr><br>"
    # end

    # render html: body.html_safe
  end

  def show
    @topic = Topic.find(params[:id])
    # render html: Topic.find(params[:id]).body
  end
end