json.extract! crewmember, :id, :name, :address, :phone, :email, :created_at, :updated_at
json.url crewmember_url(crewmember, format: :json)
