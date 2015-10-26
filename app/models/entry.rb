class Entry < ActiveRecord::Base

  validates :body, presence: true, length: {maximum: 200}
  belongs_to :user
  belongs_to :topic
  default_scope {order("created_at DESC")}

end
