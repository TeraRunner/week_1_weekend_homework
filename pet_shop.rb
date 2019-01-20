def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  return shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, increment)
  shop[:admin][:pets_sold] += increment
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, specie_name)
  pets = []
  for pet in shop[:pets]
    if pet[:breed] == specie_name
      pets.push(pet)
    end
  end
  return pets
end

def find_pet_by_name(shop, pet)
  for pet_name in shop[:pets]
    if pet_name[:name] == pet
      return pet_name
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet)
  for pet_name in shop[:pets]
    if pet_name[:name] == pet
      shop[:pets].delete(pet_name)
    end
  end
end

def add_pet_to_stock(shop, pet)
  shop[:pets] << pet
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, money)
  return customer[:cash] = customer[:cash] - money
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  return customer[:pets] << pet
end

def customer_can_afford_pet(customer, pet)
  if customer[:cash] < pet[:price]
    return false
  else
    return true
  end
end

def sell_pet_to_customer(shop, pet, customer)
  if pet != nil && customer_can_afford_pet(customer, pet)
    add_pet_to_customer(customer, pet)
    shop[:admin][:pets_sold] += 1
    customer[:cash] -= pet[:price]
    shop[:admin][:total_cash] += pet[:price]
  end
end
