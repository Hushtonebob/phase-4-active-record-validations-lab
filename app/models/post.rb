class Post < ApplicationRecord

    validates :title, presence: true
    validates :category, inclusion: {in:["Fiction","Non-Fiction"]}
    validates :content, length: {minimum:250}
    validates :summary, length: {maximum:250}
    validate :not_allowed


    def not_allowed
        if title == "True Facts"
            errors.add(:title, "Please choose another title.")
        end
    end

end
