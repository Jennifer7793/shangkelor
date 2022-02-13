class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :courses, :validate, :validation_date
  end
end
