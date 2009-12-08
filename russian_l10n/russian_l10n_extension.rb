# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'


class RussianL10nExtension < Spree::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/russian_l10n"



  # Please use russian_l10n/config/routes.rb instead for extension routes.

  # def self.require_gems(config)
  #   config.gem "gemname-goes-here", :version => '1.2.3'
  # end
  
  def activate
    # admin.tabs.add "Russian L10n", "/admin/russian_l10n", :after => "Layouts", :visibility => [:all]
    
    # Add support for internationalization to this extension.
    #Globalite.add_localization_source(File.join(RAILS_ROOT, 'vendor/extensions/russian_l10n/config/locales'))
   

    Spree::Config.set(:default_locale => 'ru-UA')   
    I18n.default_locale = 'ru-UA'


  end
end