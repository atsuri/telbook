class Telephone < ApplicationRecord
    belongs_to :friend

    validates :number, presence: true,
        format: {
            with: /\A[\d\(\)\-]+\z/,
            # \A先頭1文字、\d数字0-9、\エスケープ、＋1文字以上、\z最後の1文字
            allow_blank: true,
            # message: :invalid_member_name
        },
        length: { minimum: 8, maximum: 20 },
        uniqueness: { case_sensitive: false }
end
