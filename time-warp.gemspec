Gem::Specification.new do |s|
  s.name     = "time-warp"
  s.version  = "1.0.8"
  s.date     = "2011-04-15"
  s.summary  = "Warp time in your tests"
  s.email    = "barry@getHarvest.com"
  s.homepage = "http://github.com/harvesthq/time-warp"
  s.description = "TimeWarp is a ruby library for manipulating times in automated tests."
  s.has_rdoc = true
  s.authors   = ["Barry Hess"]
  s.files    = ["MIT-LICENSE", "Rakefile", "README.md", "lib/core_ext.rb", "lib/time_warp.rb", "lib/time-warp.rb", "tasks/time_warp_tasks.rake"]
  s.test_files = ["test/test_helper.rb", "test/time_warp_test.rb"]
end