class CreatePlangroups < ActiveRecord::Migration[6.0]
  def change
    create_table :plangroups do |t|
      t.references :group, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
