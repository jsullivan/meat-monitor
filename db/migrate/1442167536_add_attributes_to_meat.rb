Sequel.migration do
  change do
    add_column :meats, :cut, String, null: true
  end
end
