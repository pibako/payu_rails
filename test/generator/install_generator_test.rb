require "test_helper"
require "generators/install_generator"

class InstallGeneratorTest < Rails::Generators::TestCase
  tests PayuRails::Generators::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  test "Assert all files are properly created" do
    run_generator
  end
end
