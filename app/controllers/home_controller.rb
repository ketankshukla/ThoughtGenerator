class HomeController < ApplicationController
  def index
  end

  def show
    @entry = Entry.new
    @entries = current_user.entries

    #rand_id = rand(Topic.count)
    #@topic = Topic.first(rand_id)

    @topic = Topic.offset(rand(Topic.count)).first
    #@topic = Topic.first
  end
end
