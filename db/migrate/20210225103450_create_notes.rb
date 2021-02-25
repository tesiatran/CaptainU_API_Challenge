class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.string :note
      t.integer :assessment_id
      t.string :created_at
      t.string :updated_at
    end
  end
end
