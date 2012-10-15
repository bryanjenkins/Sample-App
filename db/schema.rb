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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121011221051) do

  create_table "forms", :force => true do |t|
    t.text     "allergies"
    t.integer  "family_history_id"
    t.integer  "medical_history_id"
    t.text     "medication"
    t.text     "surgery_history"
    t.boolean  "smoke"
    t.boolean  "alcohol"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "user_id"
  end

  add_index "forms", ["user_id", "created_at"], :name => "index_forms_on_user_id_and_created_at"

  create_table "medical_histories", :force => true do |t|
    t.integer  "form_id"
    t.boolean  "none"
    t.boolean  "blindness"
    t.boolean  "deafness"
    t.boolean  "vertigo"
    t.boolean  "disc_bulge_cervical_spine"
    t.boolean  "thyroid_disease"
    t.boolean  "asthma"
    t.boolean  "copd"
    t.boolean  "heart_attack"
    t.boolean  "arrhythmia_pacemaker"
    t.boolean  "congestive_heart_failure"
    t.boolean  "hypertension"
    t.boolean  "congenital_condition"
    t.boolean  "stents_bypass"
    t.boolean  "blood_vessel_disease"
    t.text     "other_heart"
    t.boolean  "ulcer"
    t.boolean  "ulcer_healed"
    t.boolean  "hiatal_hernia"
    t.boolean  "liver_disease"
    t.boolean  "kidney_disease"
    t.boolean  "irritable_bowel_disease"
    t.boolean  "chrons_disease"
    t.boolean  "diverticulitis"
    t.boolean  "other_abdomen"
    t.boolean  "stroke"
    t.boolean  "parkinsons"
    t.boolean  "paralysis"
    t.boolean  "anemia"
    t.boolean  "clotting_problems"
    t.boolean  "coumadin"
    t.boolean  "neck_pain"
    t.boolean  "back_pain"
    t.boolean  "osteoarthritis"
    t.boolean  "rheumatoid_arthritis"
    t.boolean  "lupus"
    t.boolean  "depression"
    t.boolean  "anxiety"
    t.text     "other_nervous_disorder"
    t.text     "other_medical_history"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.boolean  "diabetes"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
