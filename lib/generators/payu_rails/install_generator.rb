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
    end
  end
end
