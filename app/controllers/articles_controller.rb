class ArticlesController < ApplicationController # :nodoc:
  def new; end

  def create
    render plain: params[:article].inspect
  end
end
