class Product
  attr_accessor :title, :description, :price

  def self.all
    [
      Product.new("Aenean eleifend", "Suspendisse pellentesque mauris ac consectetur ullamcorper", 25.99),
      Product.new("Lorem ipsum", "Nunc nec lacinia dolor ac consectetur ullamcorper", 69.99),
      Product.new("Nunc nec lacinia", "Sed non accumsan ullamcorper", 9.99)
    ]
  end

  def self.find(id)
    Product.all[id.to_i]
  end

  def initialize(title, description, price)
    @title, @description, @price = title, description, price
  end
end
