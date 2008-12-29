class Merb::Authentication
  module Mixins
    module SaltedUserWithAccount
      module DMClassMethods
        def self.extended(base)
          base.class_eval do
            
            property :crypted_password,           String
            property :salt,                       String
            belongs_to :account
            validates_present        :password, :if => proc{|m| m.password_required?}
            validates_is_confirmed   :password, :if => proc{|m| m.password_required?}
            
            before :save,   :encrypt_password
          end # base.class_eval
          
        end # self.extended
        
        def authenticate(login, password, account_name = nil)
          if account_name.nil? || account_name.empty?
            Merb.logger.error "User.authenticate MISSING account_name!"
            return nil
          end
          @u = first(Merb::Authentication::Strategies::Basic::Base.login_param => login)
          @u && @u.authenticated?(password, account_name) ? @u : nil
        end
      end # DMClassMethods      
    end # SaltedUser
  end # Mixins
end # Merb::Authentication
