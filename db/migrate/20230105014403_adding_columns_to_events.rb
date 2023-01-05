class AddingColumnsToEvents < ActiveRecord::Migration[7.0]
    def change
      add_column :events, :title, :string
      add_column :events, :description, :string
      add_column :events, :exclusive, :boolean
      add_column :events, :date, :date
    end
  end
  