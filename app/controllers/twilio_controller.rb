class TwilioController < ApplicationController
  def create
    HueHandler.response(params[:Body])
    render :text => "hi"
  end
end
