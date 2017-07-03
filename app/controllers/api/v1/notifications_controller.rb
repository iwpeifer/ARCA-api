class Api::V1::NotificationsController < ApplicationController

  def index
    user = User.find(params[:user_id])
    sent_notifications = user.sent_notifications
    received_notifications = user.received_notifications

    serialized_sent_notifications = sent_notifications.map {|n| {id: n.id, sender_id: n.sender_id, recipient_id: n.recipient_id, item_id: n.item_id, gift_received?: n.gift_received?, friend_request?: n.friend_request?, created_at: n.created_at}}
    serialized_received_notifications = received_notifications.map {|n| {id: n.id, sender_id: n.sender_id, recipient_id: n.recipient_id, item_id: n.item_id, gift_received?: n.gift_received?, friend_request?: n.friend_request?, created_at: n.created_at}}
    render json: serialized_sent_notifications + serialized_received_notifications
  end

  def show
    user = User.find(params[:id])
    render json: user, include: :notifications
  end

  def create
    user = User.find(params[:id])
  end

end
