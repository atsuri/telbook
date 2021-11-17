class Friend < ApplicationRecord
    has_many :telephones, dependent: :destroy

    validates :name, presence: true,
        length: { maximum: 10, allow_blank: true, message: :invalid_friend_name}
end
