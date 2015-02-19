# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150219030556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entries", force: :cascade do |t|
    t.decimal  "score"
    t.string   "name"
    t.integer  "best_picture"
    t.integer  "actor"
    t.integer  "actress"
    t.integer  "supporting_actor"
    t.integer  "supporting_actress"
    t.integer  "animated_feature"
    t.integer  "cinematography"
    t.integer  "costume"
    t.integer  "directing"
    t.integer  "documentary_feature"
    t.integer  "documentary_short"
    t.integer  "film_editing"
    t.integer  "foreign_feature"
    t.integer  "makeup"
    t.integer  "music_score"
    t.integer  "music_song"
    t.integer  "production_design"
    t.integer  "animated_short"
    t.integer  "live_action_short"
    t.integer  "sound_editing"
    t.integer  "sound_mixing"
    t.integer  "visual_effects"
    t.integer  "adapted_screenplay"
    t.integer  "original_screenplay"
    t.boolean  "master",              default: false, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
