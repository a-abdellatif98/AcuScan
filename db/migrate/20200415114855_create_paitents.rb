# frozen_string_literal: true

class CreatePaitents < ActiveRecord::Migration[6.0]
  def change
    create_table :paitents do |t|
      t.string :name
      t.string :adress
      t.bigint :National_id
      t.integer :mobile
      t.string :gender
      t.date :dob
      t.bigint :serialnumber
      t.references :visits_id

      t.timestamps
    end
  end
end
