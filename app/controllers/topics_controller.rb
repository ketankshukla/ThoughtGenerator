class TopicsController < ApplicationController

  def show
    #show a sample topic in the page when a button is pressed
    rand_id = rand(Topic.count)
    @topic = Topic.first(:conditions => [ "id >= ?", rand_id])
  end
end
