json.extract! appointment, :id, :name, :companyname, :numofemployees, :usedsocmedmarket, :wasiteffective, :doyouhave, :usedanytopromote, :email, :phonenum, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
