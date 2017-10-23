class Genre < ApplicationRecord

has_many :mtourokus    

validate :error_check

    def error_check
        if name.blank?
            errors[:base]<<'ジャンルは必ず入力してください'
        end
    end        
end
