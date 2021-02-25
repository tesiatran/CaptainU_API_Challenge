class CreateAssessments < ActiveRecord::Migration[6.1]
  def change
    create_table :assessments do |t|
      t.number :rating
      t.integer :user_id
      t.integer :tournament_id
      t.integer :player_id
      t.string :assessment_type
      t.string :created_at
      t.string :updated_at

      t.timestamps
    end
  end
end
