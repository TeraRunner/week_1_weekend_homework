def pet_shop_name(shop_name)
  return @pet_shop[:name]
end

def total_cash(shop_name)
  return @pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(shop_name, money)
  return @pet_shop[:admin][:total_cash] += money
end

def pets_sold(shop_name)
  return @pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(shop_name, increment)
  @pet_shop[:admin][:pets_sold] += increment
end

def stock_count(shop_name)
  return @pet_shop[:pets].length
end
