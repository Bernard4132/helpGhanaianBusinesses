json.extract! project, :id, :title, :active, :deploy, :cost_id, :timeline_id, :details, :created_at, :updated_at
json.url project_url(project, format: :json)
