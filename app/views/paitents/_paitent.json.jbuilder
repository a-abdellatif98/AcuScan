# frozen_string_literal: true

json.extract! paitent, :id, :name, :adress, :National_id, :visits_id, :mobile, :gender, :dob, :created_at, :updated_at
json.url paitent_url(paitent, format: :json)
