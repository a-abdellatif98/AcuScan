# frozen_string_literal: true

class CreatePaitents < ActiveRecord::Migration[6.0]
  def change
    create_table :paitents do |t|
      t.bigint :serialnumber , null: false, unique: true
      t.string :name
      t.string :adress
      t.bigint :National_id
      t.bigint :mobile
      t.string :gender
      t.date :dob

      t.timestamps
    end
  end
end
