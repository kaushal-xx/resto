json.extract! table_video, :id, :name, :description, :url, :video_type, :table_id, :status, :creator_id, :modifier_id, :create_time, :modified_time, :created_at, :updated_at
json.url table_video_url(table_video, format: :json)
