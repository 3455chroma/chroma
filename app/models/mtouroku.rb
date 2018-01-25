class Mtouroku < ApplicationRecord

belongs_to :genre    
belongs_to :user    

validate :error_check

def error_check
    if genre_id.blank?
        errors[:base]<<'ジャンルを選択してください'
    end

    if memo.blank?
        errors[:base]<<'メモが入力されていません'
    end

end

end
