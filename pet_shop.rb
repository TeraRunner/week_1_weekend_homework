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

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, pet)
  shop[:pets] << pet
end
