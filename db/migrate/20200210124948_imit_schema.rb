class ImitSchema < ActiveRecord::Migration[5.2]
  def change
    create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
      t.string "last_name", null: false
      t.string "first_name", null: false
      t.string "mail", null: false
      t.string "pass_word", null: false
      t.datetime "discarded_at"
    end
    create_table "books", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
      t.string "title", null: false
      t.string "author", null: false
      t.boolean "is_read", null: false
      t.datetime "discarded_at"
    end
    create_table "histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
      t.integer "book_id", null: false
      t.string "memo"
      t.date "date", null: false
      t.datetime "discarded_at"
    end
  end
end


