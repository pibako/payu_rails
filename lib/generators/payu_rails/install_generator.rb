module PayuRails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates/", __FILE__)

      desc "Install payu initialization file."
      def copy_initializer_file
        copy_file "payu.rb", "config/initializers/payu.rb"
      end

      desc "Install payu configuration file."
      def copy_configuration_file
        copy_file "payu.yml", "config/payu.yml"
      end

      desc "Install payu controlerr."
      def copy_controller_file
        copy_file "payu_controller.rb", "app/controllers/payu_controller.rb"
      end

      desc "Setup payu routes file."
      def add_routes
        route %Q{get "/payu/ok" => "payu#ok"}
        route %Q{get '/payu/error' => 'payu#error'}
        route %Q{post '/payu/report' => 'payu#report'}
      end
    end
  end
end
