class StaticPagesController < ApplicationController
  def home
    if submitted_entry?
      redirect_to current_entry
    end
  end
end
