class HomeController < ApplicationController
  def index
    @google_key = ENV["GOOGLE_KEY"]
  end
end
