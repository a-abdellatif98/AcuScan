# frozen_string_literal: true

json.extract! vist, :id, :p_serial, :created_at, :updated_at
json.url vist_url(vist, format: :json)
