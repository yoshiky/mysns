class SearchController < ApplicationController
  before_filter :authenticate_user!
    
  def index
    @search_form = UserSearchForm.new(params[:user_search_form])
    @users = User.where("name LIKE ?", "%#{@search_form.q}%")
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
