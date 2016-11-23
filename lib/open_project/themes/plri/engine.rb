module OpenProject::Themes::PLRI
  class Engine < ::Rails::Engine
    engine_name :openproject_themes_plri

    initializer 'themes.plri.register_themes' do
      ActiveSupport.on_load(:themes) do
        require 'open_project/themes/plri/all'
      end
    end

    config.to_prepare do
      require 'redmine/plugin'
      require 'open_project/themes/plri/version'

      Redmine::Plugin.register 'PLRI-Theme' do
        name 'OpenProject PLRI Themes'
        author 'PLRI'
        description 'Custom PLRI theme for OpenProject'

        url 'https://github.com/MrApe/openproject-themes-plri'
        author_url 'https://plri.de'

        version OpenProject::Themes::PLRI::VERSION

        requires_openproject ">= 6.0.0"
      end
    end
  end
end
