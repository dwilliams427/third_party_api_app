class Api::CalendarsController < ApplicationController
  def index
    response = HTTP.get("https://calendarific.com/api/v2/holidays?api_key=#{Rails.application.credentials.calendar_api[:api_key]}&country=US&year=2021")

    render json: response.parse
  end
end
