ActiveRecord::Schema.define(version: 2021_04_14_125411) do

  create_table "properties", force: :cascade do |t|
    t.string "property_name"
    t.integer "rent"
    t.string "address"
    t.integer "age"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "line"
    t.string "station_name"
    t.integer "minutes"
    t.integer "property_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["property_id"], name: "index_stations_on_property_id"
  end

end
