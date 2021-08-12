class CreateParticipates < ActiveRecord::Migration[6.1]
  def change
    create_table :participates do |t|
      t.string :name
      t.string :email
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
