class User < ApplicationRecord

    has_many :stourokus    

    validate :error_check_password, :on => :create
    validate :error_check
    
    def error_check
        if name.blank?
            errors[:base] << '名前は必ず入力してください。'
        end

        if account.blank?
            errors[:base] << 'アカウント名は必ず入力してください。'
        end
    end

    def error_check_password
        if password.blank?
            errors[:base] << 'パスワードは必ず入力してください。'
        end
    end
end
