class MessageDecorator < Draper::Decorator
  delegate_all

  def formatted_for_room
    case created_at
    when DateTime.now.beginning_of_day..DateTime.now
      "#{message.created_at.strftime('%H:%M')} #{message.user.username}: #{message.content.camelize}"
    else
      "#{message.created_at.strftime('%b %d %Y %H:%M')} #{message.user.username}: #{message.content.camelize}"
    end

  end
end