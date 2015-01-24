module ProductsHelper
  def display_thc(product)
    product.thc.blank? ? 'untested' : number_to_percentage(product.thc, :precision => 1)
  end

  def display_cbd(product)
    product.cbd.blank? ? 'untested' : number_to_percentage(product.cbd, :precision => 1)
  end

  def display_butane(product)
    product.butane.blank? ? 'n/a' : number_with_precision(product.butane, :precision => 2)
  end

end

