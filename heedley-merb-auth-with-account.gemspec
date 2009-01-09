Gem::Specification.new do |s|
  s.name     = %q{merb-auth-with-account}
  s.version  = "0.0.2"
  s.date     = %q{2009-01-09}
  s.summary  = %q{strategy to authenticate users on per account basis}
  s.email    = "hedley.robertson@gmail.com"
  s.homepage = %q{http://github.com/heedley/merb-pagination/tree/master}
  s.require_paths = ["lib"]
  s.description = %q{strategy to authenticate users on per account basis}
  s.has_rdoc = true
  s.authors  = ["Hedley Robertson"]
  s.files    = ["heedley-merb-auth-with-account.gemspec",
                "lib/heedley-merb-auth-with-account.rb",
                "lib/heedley-merb-auth-with-account/strategies/abstract_password.rb",
                "lib/heedley-merb-auth-with-account/strategies/password_form_with_account.rb",
                "lib/heedley-merb-auth-with-account/mixins",
                "lib/heedley-merb-auth-with-account/mixins/salted_user",
                "lib/heedley-merb-auth-with-account/mixins/salted_user.rb",
                "lib/heedley-merb-auth-with-account/mixins/salted_user/ar_salted_user.rb",
                "lib/heedley-merb-auth-with-account/mixins/salted_user/dm_salted_user_with_account.rb",
                "lib/heedley-merb-auth-with-account/mixins/salted_user/relaxdb_salted_user.rb",
                "lib/heedley-merb-auth-with-account/mixins/salted_user/sq_salted_user.rb",
                "README.txt"
  ]
  s.rdoc_options = ["--main", "README.txt"]
  s.extra_rdoc_files = ["README.txt"]
  s.add_dependency(%q<merb-core>, [">= 0.9"])
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2
  end
end
