class EntriesController < ApplicationController
  before_action :set_topic

  def create
    @entry = current_user.entries.new(entry_params)
    @entry.topic = @topic

    if @entry.save
      #flash[:notice] = "Your thought was successfully created."
    else
      flash[:error] = "Your thought was NOT successfully created."
    end
    redirect_to home_path
  end


  private

  def entry_params
    params.require(:entry).permit(:body)
  end

  def set_topic
    @topic = Topic.find(params[:topic_id])
  end
end