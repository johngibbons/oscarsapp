class SessionsController < ApplicationController
  def new
  end

  def create
    @entry = Entry.find_by(name: params[:session][:name])
    if @entry
      remember(@entry)
      redirect_to @entry, notice: "Entry successfully logged in"
    else
      flash.now[:danger] = "Can't find that entry"
      render 'new'
    end
  end
end
