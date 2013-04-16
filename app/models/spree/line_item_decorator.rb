Spree::LineItem.class_eval do
  # pattern grabbed from: http://stackoverflow.com/questions/4470108/

  # the idea here is compatibility with spree_volume_prices
  # trying to create a 'calculation stack' wherein the best valid price is
  # chosen for the product. This is mainly for compatibility with spree_volume_pricing

  define_method(:copy_price) do
    if self.variant.on_sale_price?
      sale_price = self.variant.product.sale_price
      return self.price = sale_price
    end
  end
end