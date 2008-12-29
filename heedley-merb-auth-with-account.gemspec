Gem::Specification.new do |s|
  s.name     = %q{heedley-merb-auth-with-account}
  s.version  = "0.0.1"
  s.date     = %q{2008-12-23}
  s.summary  = %q{strategy to authenticate users on per account basis}
  s.email    = "hedley.robertson@gmail.com"
  s.homepage = %q{http://github.com/heedley/merb-pagination/tree/master}
  s.require_paths = ["lib"]
  s.description = %q{strategy to authenticate users on per account basis}
  s.has_rdoc = true
  s.authors  = ["Hedley Robertson"]
  s.files    = ["heedley-merb-auth-with-account.gemspec",
                "lib/heedley-merb-auth-with-account.rb",
                "lib/heedley-merb-auth-with-account/strategies/basic/password_form_with_account.rb",
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