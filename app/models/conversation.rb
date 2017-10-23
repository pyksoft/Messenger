# == Schema Information
#
# Table name: conversations
#
#  id         :integer          not null, primary key
#  user1_id   :integer
#  user2_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Conversation < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
end
