class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_user
  end

  def receive(data)
    recipient = User.find(data['recipient_id'])
    # Check roles and authorization here
    if current_user.role == 'student' && recipient.role == 'counselor'
      ChatChannel.broadcast_to(recipient, data)
    elsif current_user.role == 'counselor' && recipient.role == 'student'
      ChatChannel.broadcast_to(recipient, data)
    else
      # Handle unauthorized messages
    end
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
