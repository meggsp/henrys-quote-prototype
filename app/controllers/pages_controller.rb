class PagesController < ApplicationController
  def home
  end

  def dashboard
    @quotes = Quote.all
  end
end
