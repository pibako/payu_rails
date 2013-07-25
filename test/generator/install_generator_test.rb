require "test_helper"
require "generators/payu_rails/install_generator"

class InstallGeneratorTest < Rails::Generators::TestCase
  tests PayuRails::Generators::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)

  setup do
    prepare_destination
    copy_routes
  end

  test "Assert all files are properly created" do
    run_generator
    assert_file "config/initializers/payu.rb"
    assert_file "config/payu.yml"
  end

  test "routes.rb contains specific routes" do
    run_generator
    match1 = /match "\/payu\/ok" => "payu#ok"/
    match2 = /match '\/payu\/error' => 'payu#error'/
    match3 = /match '\/payu\/report' => 'payu#report'/
    [match1, match2, match3].each do |match|
      assert_file "config/routes.rb", match
    end
  end

  protected
  def copy_routes
    routes = File.expand_path("../../dummy/config/routes.rb", __FILE__)
    destination = File.join(destination_root, "config")

    FileUtils.mkdir_p(destination)
    FileUtils.cp routes, destination
  end
end
