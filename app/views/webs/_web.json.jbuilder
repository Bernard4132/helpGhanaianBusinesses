json.extract! web, :id, :name, :email, :phone, :aboutcompany, :aboutproject, :projectdeadline, :projectbudget, :targetaudience, :created_at, :updated_at
json.url web_url(web, format: :json)
