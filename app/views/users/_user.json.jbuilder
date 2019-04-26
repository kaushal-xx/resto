json.extract! user, :id, :uuid, :email, :phone, :name, :status, :type, :photo, :gender, :fcm_token, :tc_accept, :creator_id, :modifier_id, :create_time, :modified_time, :created_at, :updated_at
json.url user_url(user, format: :json)
