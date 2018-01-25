class User < ApplicationRecord

    has_many :stourokus
    has_many :mtourokus
    

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

    def self.authenticate(account,password)
        usr = find_by(account: account)
        if usr != nil && usr.password == password then
           usr
        else
           return
        end
    end
end
