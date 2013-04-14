class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index
    @video_lists = Youtube.video_info("LUNASEA")
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

end
