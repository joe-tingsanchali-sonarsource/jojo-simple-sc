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
