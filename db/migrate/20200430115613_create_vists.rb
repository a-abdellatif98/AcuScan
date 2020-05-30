class CreateVists < ActiveRecord::Migration[6.0]
  def change
    create_table :vists do |t|
      t.bigint :paitent_serialnumer
      t.references :report_id
      t.integer :counter
      t.references :receptionest_id

      t.timestamps
    end
  end
end
