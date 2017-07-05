class Api::V1::NotificationsController < ApplicationController

  def index
    # user = User.find(params[:user_id])
    # sent_notifications = user.sent_notifications
    # received_notifications = user.received_notifications

    notifications = Notification.find_by(sender_id: params[:user_id])


    # serialized_sent_notifications = sent_notifications.map {|n| {id: n.id, sender_id: n.sender_id, recipient_id: n.recipient_id, item_id: n.item_id, is_gift: n.is_gift, is_friend_request: n.is_friend_request, created_at: n.created_at}}
    # serialized_received_notifications = received_notifications.map {|n| {id: n.id, sender_id: n.sender_id, recipient_id: n.recipient_id, item_id: n.item_id, is_gift: n.is_gift?, is_friend_request: n.is_friend_request, created_at: n.created_at}}
    # render json: serialized_sent_notifications + serialized_received_notifications
    render json: notifications
  end

  def show
    user = User.find(params[:id])
    render json: user, include: :notifications
  end

  def create
    notification = Notification.create(notification_params)
    render json: notification
  end

  private

  def notification_params
    params.require(:notification).permit(:sender_id, :recipient_id, :item_id, :is_gift, :is_friend_request)
  end

end
