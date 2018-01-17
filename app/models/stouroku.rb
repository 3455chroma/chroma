class Stouroku < ApplicationRecord

    belongs_to :genre  
    belongs_to :user

    validate :error_check

    def error_check
        if name.blank?
            errors[:base] << '商品名は必ず入力してください'
        end

        #if money.blank?
            #errors[:base] << '金額は必ず入力してください'
        #end
    end
end