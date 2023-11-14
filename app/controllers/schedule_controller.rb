class ScheduleController < ApplicationController
  def hello
    @hello = "こんにちは"
  end

  def call
    @call = "見えてるかな？"
  end
end
