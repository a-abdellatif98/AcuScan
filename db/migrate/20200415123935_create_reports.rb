class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.string :label
      t.date :date
      t.references :paitent_id
      t.references :doctor_id
      t.references :xray_id

      t.timestamps
    end
  end
end
