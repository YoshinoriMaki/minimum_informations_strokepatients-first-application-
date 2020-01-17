class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.integer :intracranial_hemorrhage, null: false
      t.integer :infraction_episodes, null: false
      t.integer :usage_antithrombotic, null: false
      t.text :usage_antithrombotic
      t.integer  :hypertension, null: false
      t.text :medication_hypertension
      t.integer :diabetes, null: false
      t.text :medication_diabetes
      t.integer :hyperlipidemia, null: false
      t.text :medication_hyperlipidemia
      t.integer :liver_malfunction, null: false
      t.integer :kidney_malfunction, null: false
      t.integer :residence, null: false
      t.integer :activity_outside, null: false
      t.integer :activity_inside, null: false

      # t.references :user, foreign_key: true
      t.timestamps
    end
  end
end