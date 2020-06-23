# frozen_string_literal: true

class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.bigint :paitent_serialnumer
      t.integer :counter
    
      t.timestamps
    end
  end
end
