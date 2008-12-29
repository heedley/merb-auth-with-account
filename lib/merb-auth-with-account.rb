# To change this template, choose Tools | Templates
# and open the template in the editor.

# make sure we're running inside Merb
if defined?(Merb::Plugins)
  Merb.logger.info "heedley-merb-auth-with-account online"

  # Register the strategies so that plugins and apps may utilize them
  basic_path = File.expand_path(File.dirname(__FILE__)) / "heedley-merb-auth-with-account" / "strategies" 
  
  Merb::Authentication.register(:password_form_with_account, basic_path / "password_form_with_account.rb")
  
  Merb::BootLoader.before_app_loads do
    Merb.logger.info "before_app_loads for heedley-merb-auth-with-account"
    # require code that must be loaded before the application
  end
  
  Merb::BootLoader.after_app_loads do
    Merb.logger.info "after_app_loads for heedley-merb-auth-with-account"
    # code that can be required after the application loads
  end
  
#  Merb::Plugins.add_rakefiles "merb-auth-more/merbtasks"
end