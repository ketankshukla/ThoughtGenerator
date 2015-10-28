class EntriesController < ApplicationController
  before_action :set_topic

  def create
    @entry = current_user.entries.new(entry_params)
    @entry.topic = @topic

    @entry_saved = false
    if @entry.save
      @entry_saved = true
    end

    @topic = Topic.offset(rand(Topic.count)).first
    respond_to do |format|
      format.html {redirect_to home_path}
      format.js
    end
  end


  private

  def entry_params
    params.require(:entry).permit(:body)
  end

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end
end