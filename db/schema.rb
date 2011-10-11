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

ActiveRecord::Schema.define(:version => 20111011003223) do

  create_table "attractions", :force => true do |t|
    t.string   "permalink"
    t.string   "short_name"
    t.string   "when_to_go"
    t.string   "scheduled_code"
    t.string   "reflective_captioning"
    t.string   "physical_considerations"
    t.string   "open_not_so_scary"
    t.string   "open_emh_evening"
    t.string   "name"
    t.string   "duration"
    t.string   "average_wait_assumes"
    t.string   "scope_and_scale_code"
    t.string   "minor_attraction"
    t.string   "intense"
    t.string   "video_captioning"
    t.string   "open_very_merry"
    t.string   "not_to_be_missed"
    t.string   "assistive_listening"
    t.string   "wheelchair_transfer_code"
    t.string   "must_transfer_from_wheelchair"
    t.string   "special_needs"
    t.string   "single_rider"
    t.string   "seasonal"
    t.string   "handheld_captioning"
    t.string   "frightening"
    t.string   "no_service_animals"
    t.string   "loading_speed"
    t.string   "fastpass_booth"
    t.string   "what_it_is"
    t.string   "ultimate_code"
    t.string   "open_emh_morning"
    t.string   "category_code"
    t.string   "sign_language"
    t.string   "service_animal_check"
    t.string   "rider_swap"
    t.string   "average_wait_per_hundred"
    t.string   "probable_wait_time"
    t.string   "ultimate_task"
    t.string   "time_zone"
    t.string   "audio_description"
    t.string   "height_restriction"
    t.date     "extinct_on"
    t.date     "opened_on"
    t.integer  "land_id"
    t.integer  "park_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lands", :force => true do |t|
    t.string   "name"
    t.integer  "park_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parks", :force => true do |t|
    t.string   "name"
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
