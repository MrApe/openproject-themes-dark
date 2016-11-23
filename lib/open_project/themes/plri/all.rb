require 'open_project/themes/theme'

module OpenProject::Themes::PLRI
  class DarkTheme < OpenProject::Themes::Theme
    def assets_path
      OpenProject::Themes::PLRI.assets_path
    end
  end
end
