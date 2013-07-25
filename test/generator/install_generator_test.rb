require "test_helper"
require "generators/payu_rails/install_generator"

class InstallGeneratorTest < Rails::Generators::TestCase
  tests PayuRails::Generators::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator
    assert_file "config/initializers/payu.rb"
    assert_file "config/payu.yml"
  end
end
