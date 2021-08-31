class Room < ApplicationRecord
  has_many :messages
  after_create_commit { broadcast_append_to "rooms"}
  # broadcasts_to ->(room) { [ room, :rooms ] }, inserts_by: :append, target: "rooms"
end
