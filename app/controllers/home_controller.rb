# frozen_string_literal: true
class HomeController < ApplicationController
  def index
    return render :index if user_signed_in?

    render :index_guest, layout: false
  end
end
