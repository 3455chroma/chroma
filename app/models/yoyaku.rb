class Yoyaku < ApplicationRecord

  has_many :genrekeyword

  validate :error_check

  def error_check
    if name.blank?
      errors[:base]<<'名前を入力してください'
    end
  end    
end
