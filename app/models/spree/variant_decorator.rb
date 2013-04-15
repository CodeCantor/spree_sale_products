Spree::Variant.class_eval do
  attr_accessible :sale_price

  def on_sale_price?
    sale_price > 0.0
  end
end