class CreateGroupEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :group_events do |t|
      t.references :user, foreign_key: true
      t.timestamp :starts
      t.integer :duration
      t.string :name
      t.text :description
      t.string :location
      t.string :state, default: 'draft'

      t.timestamps
    end
  end
end
