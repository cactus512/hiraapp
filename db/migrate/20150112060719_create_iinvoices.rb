class CreateIinvoices < ActiveRecord::Migration
  def change
    create_table :iinvoices do |t|
      t.datetime :date
      t.string :company
      t.decimal :tax
      t.string :salesperson

      t.timestamps
    end
  end
end
