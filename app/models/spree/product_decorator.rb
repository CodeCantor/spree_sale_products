Spree::Product.class_eval do
  delegate_belongs_to :master, :sale_price
  attr_accessible :sale_price

  def on_sale_price?
    self.sale_price > 0.0
  end
end
