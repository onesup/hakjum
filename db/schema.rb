# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110227183226) do

  create_table "scores", :force => true do |t|
    t.integer  "got_total_credit"
    t.float    "current_average_score"
    t.float    "need_average_score"
    t.integer  "left_credit"
    t.float    "safe_average_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
