p "REQUIRED password_form_with_account.rb"

# This strategy uses a login  and password parameter on per account basis.

# Overwrite the :password_param, and :login_param
# to return the name of the field (on the form) that you're using the 
# login with.  These can be strings or symbols
#
# == Required
#
# === Methods
# <User>.authenticate(login_param, password_param)
#
#
#module Merb::Authentication::Strategies
#  class FormWithAccount < Merb::Authentication::Strategy
#    def run!
#       if params[:login]
#         User.authenticate(request.params[:login], request.params[:password])
#       end
#    end
#  end
#end

module Merb::Authentication::Strategies
  class FormWithAccount < Merb::Authentication::Strategy

    def redirect!(url, opts = {})
      self.headers["Location"] = url
      self.status = opts[:permanent] ? 301 : 302
      self.status = opts[:status] if opts[:status]
      if ROOT_DOMAIN
        url = url.gsub(Regexp.new("\/([a-zA-Z0-9]+)\.#{ROOT_DOMAIN}\/"),'/')
      end

      self.body   = opts[:message] || "<div>You are being redirected to <a href='#{url}'>#{url}</a></div>"
      halt!
      return true
    end

    def run!
       if params[:account_subdomain]
          user = User.authenticate(request.params[:login], request.params[:password], params[:account_subdomain])
       else
         raise "missing :account_subdomain route param #{params.inspect}"
       end
       user
    end
  end
end
#
#class Merb::Authentication
#  module Strategies
#    module Basic
#      class FormWithAccount < Base
#
#        def run!
#          raise request.params.inspect
#        end
#
#      end
#    end
#  end
#end
##class Merb::Authentication
##  module Strategies
##    module Basic
##      class Form < Base
##
##        def run!
##          raise request.params.inspect
##          if request.params[login_param] && request.params[password_param]
##            user = user_class.authenticate(request.params[login_param], request.params[password_param])
##            if !user
##              request.session.authentication.errors.clear!
##              request.session.authentication.errors.add(login_param, strategy_error_message)
##            end
##            user
##          end
##        end # run!
##
##        def strategy_error_message
##          "#{login_param.to_s.capitalize} or #{password_param.to_s.capitalize} were incorrect"
##        end
##
##      end # Form
##    end # Password
##  end # Strategies
#end # Authentication