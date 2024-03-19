require 'open-uri'

# 1. SQL Injection
def find_product(id)
  Product.where("id = #{id}").first
end

# 2. Cross-Site Scripting (XSS)
def display_comment(comment)
  erb :comment, locals: { comment: comment }
end

# 3. Command Injection 
def run_backup(destination)
  system("rsync -avz /data/ #{destination}")
end

# 4. Unrestricted File Upload
def upload_file(file)
  File.open(Rails.root.join('public', 'uploads', file.original_filename), 'wb') do |f|
    f.write(file.read)
  end
end

# 5. Denial of Service with YAML Deserialization
def load_settings(yaml_string)
  YAML.load(yaml_string)
end

class Inventory
  def initialize
    @items = [] # Potential naming clash
  end

  def add_item(name, quantity)
    @items << { name: name, quantity: quantity }
  end

  def item_in_stock?(name)
    @items.each do |item|
      return true if name == item[:name] 
    end
    return false # Unnecessary return
  end

  def total_stock
    total = 0
    @items.each do |item|
      total =+ item[:quantity] # `+=` can be used 
    end
    total
  end

  # Private methods not marked 'private'
  def display_inventory 
    # ...
  end 
end

# Usage
inventory = Inventory.new
inventory.add_item("Laptop", 5) 

# ...later
if inventory.item_in_stock?("Laptop")
  puts "Laptops are in stock!"
end 
