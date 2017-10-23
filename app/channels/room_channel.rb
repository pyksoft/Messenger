class RoomChannel < ApplicationCable::Channel
  def subscribed
    puts "INSIDE SUBSCRIBE #{params}"
    # puts @conversation.id
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    ActionCable.server.broadcast "room_channel", message: data['message']
    # @message = Message.new(content: data['message'], sender: current_user, conversation_id: )
    # @message.conversation = @conversation
    # @message.sender = current_user
  end
end
