Sequel.migration do
  change do
    create_table(:readings) do
      uuid         :id, default: Sequel.function(:uuid_generate_v4), primary_key: true
      timestamptz  :created_at, default: Sequel.function(:now), null: false
      timestamptz  :updated_at, default: Sequel.function(:now), null: false
      integer      :temp, null: false
      uuid         :meat_id, null: false, foreign_key: true
    end
  end
end
