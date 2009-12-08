class BlogEntry < ActiveRecord::Base
  has_and_belongs_to_many :products
  has_many :comments
 
  validates_presence_of :author
  validates_presence_of :title
  validates_presence_of :body

  def codes
    self.body.scan(/\*([^:*]+):?([^*]*)\*/).uniq
  end

  def validate
    codes.each do |k,n|
      v = Variant.find_by_sku(k)
      errors.add(:body, " contains unknown product code #{k}") if v.nil?
    end
  end

  def self.latest(limit = 3)
      find(:all, :order => "created_at DESC", :limit => limit)
  end

  before_save :set_products

  private
    def set_products
      self.products = []
      self.products = codes.map {|k| Variant.find_by_sku(k).product }
    end  

end
