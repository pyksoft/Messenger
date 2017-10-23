module MessagesHelper
  def parse_emoji(message)
    # message.gsub ":laughing:", "😂"
    # message.gsub ":smile:", "😊"
    # message.gsub ":worried:", "😕"
    # message.gsub ":kissing_heart:", "😘"
    # message.gsub ":grin:", "😬"

    h(message).to_str.gsub(/:([\w+-]+):/) do |match|
      if emoji = Emoji.find_by_alias($1)
        %(<img alt="#$1" src="#{image_path("emoji/#{emoji.image_filename}")}" style="vertical-align:middle" width="20" height="20" />)
      else
        match
      end
    end.html_safe if message.present?
  end
end
