class AddAddressToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :address1, :string
    add_column :courses, :city, :string
    add_column :courses, :country, :string
    add_column :courses, :name, :string
    add_column :courses, :phone, :string
    add_column :courses, :state, :string
    add_column :courses, :TimeZone, :string
    add_column :courses, :ZipCode, :string
  end
end
