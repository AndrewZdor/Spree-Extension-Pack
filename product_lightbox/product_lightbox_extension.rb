class ProductLightboxExtension < Spree::Extension
  version "1.0"
  description "Lightbox for product images"
  def activate
    # admin.tabs.add "Product Lightbox", "/admin/product_lightbox", :after => "Layouts", :visibility => [:all]
  end
end
