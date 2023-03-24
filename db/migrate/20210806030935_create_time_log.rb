class CreateTimeLog < ActiveRecord::Migration[6.1]
  def change
    create_table :time_logs do |t|
      t.integer :duration_hours, null: false
      t.text :description, null: false
      t.integer :status, null: false, default: 0

      t.index :status

      t.timestamps
    end
  end
end
