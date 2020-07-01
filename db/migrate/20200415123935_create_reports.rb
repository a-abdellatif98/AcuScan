# frozen_string_literal: true

class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :label
      t.date :date

      t.timestamps
    end
  end
end
