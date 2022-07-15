class CreatePersonnels < ActiveRecord::Migration[6.1]
  def change
    create_table :personnels do |t|

      t.timestamps
    end
  end
end
