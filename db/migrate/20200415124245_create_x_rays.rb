# frozen_string_literal: true

class CreateXRays < ActiveRecord::Migration[6.0]
  def change
    create_table :x_rays do |t|
      t.string :image_url
      t.references :paitent_id
      t.string :label

      t.timestamps
    end
  end
end
