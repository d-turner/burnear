class PagesController < ApplicationController
  def home

  end
  def message
    @messages = Message.all
  end
end
