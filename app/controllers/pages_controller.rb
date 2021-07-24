class PagesController < ApplicationController
  #renders app/views pages
  def index
    #render 'index'
    @streamer = ElevatorMedia::Streamer.getContent()
  end
  def commercial
    @streamer = ElevatorMedia::Streamer.getContent()
  end
  def residential
    @streamer = ElevatorMedia::Streamer.getContent()
  end
  def quote
    @streamer = ElevatorMedia::Streamer.getContent()
  end
end

