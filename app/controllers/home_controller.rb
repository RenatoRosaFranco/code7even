class HomeController < ApplicationController
  def index
    @contact = Contact.new
    @newsletter = Newsletter.new
  end
end
