class CreateCostumers < ActiveRecord::Migration[6.0]
  def change
    create_table :costumers do |t|
      t.string :name
      t.string :last_name
      t.string :address
      t.string :password
      t.string :email
      t.numeric :phone

      t.timestamps
    end
  end
end
