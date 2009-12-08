= Russian L10n

Bug #436

If a localization string has already been defined in core it can't be overridden from an extension.
To fix this do the following:

lib/spree/initializer.rb

@@ -148,7 +148,7 @@ module Spree
0
     def initialize_i18n
0
       extension_loader.add_locale_paths
0
       spree_locale_paths = Dir[File.join(SPREE_ROOT, 'config', 'locales', '*.{rb,yml}')]
0
-      extension_loader.configuration.i18n.load_path.concat(spree_locale_paths)
0
+      spree_locale_paths.concat(extension_loader.configuration.i18n.load_path)
0
       super
0
     end
