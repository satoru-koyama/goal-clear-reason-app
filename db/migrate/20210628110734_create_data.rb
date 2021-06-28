class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|

      t.timestamps
      t.integer :user_id
      t.boolean :clear, default: false, null: false
      t.text :reason
      t.text :goal
      t.date :date


    end
  end
end
