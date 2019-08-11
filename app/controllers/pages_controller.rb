# frozen_string_literal: true

class PagesController < ApplicationController
  
  def home
    @notifications = Notification.all
  end

  def mark_alerts_read
    Notification.all.where(seen: false).update_all(seen: true)
    render json: { status: :ok }
  end

end
