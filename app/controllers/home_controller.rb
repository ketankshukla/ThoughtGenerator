class HomeController < ApplicationController
  def index
  end

  def show
    @entry = Entry.new
    @entries = current_user.entries

    @topic = Topic.offset(rand(Topic.count)).first

  end
end
