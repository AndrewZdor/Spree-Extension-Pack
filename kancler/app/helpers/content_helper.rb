module ContentHelper

  # generates nested url to product based on supplied taxon
  def seo_url(taxon, product = nil)
    return '/t/' + taxon.permalink if product.nil?
    
    '/t/' + taxon.permalink + "p/" + product.permalink
  end
  
end
