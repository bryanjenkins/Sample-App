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

ActiveRecord::Schema.define(:version => 20130228195232) do

  create_table "family_histories", :force => true do |t|
    t.boolean  "heart_disease"
    t.boolean  "lung_disease"
    t.boolean  "kidney_disease"
    t.boolean  "rheumatoid_arthritis"
    t.boolean  "cancer"
    t.text     "other"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "form_id"
  end

  create_table "forms", :force => true do |t|
    t.text     "allergies"
    t.text     "medication"
    t.text     "surgery_history"
    t.boolean  "smoke"
    t.boolean  "alcohol"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "patient_id"
  end

  add_index "forms", ["created_at"], :name => "index_forms_on_user_id_and_created_at"

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
    t.boolean  "ulcer_healed",              :default => true
    t.boolean  "hiatal_hernia"
    t.boolean  "liver_disease"
    t.boolean  "kidney_disease"
    t.boolean  "irritable_bowel_disease"
    t.boolean  "chrons_disease"
    t.boolean  "diverticulitis"
    t.text     "other_abdomen"
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
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.boolean  "diabetes"
  end

  create_table "patients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "patients", ["name"], :name => "index_patients_on_name_and_form_id"

  create_table "symptoms", :force => true do |t|
    t.integer  "form_id"
    t.boolean  "new_complaints"
    t.boolean  "fever"
    t.boolean  "weight_loss"
    t.boolean  "weight_gain"
    t.boolean  "blurring"
    t.boolean  "loss_of_vision"
    t.boolean  "ringing_in_the_ears"
    t.boolean  "decreased_hearing"
    t.boolean  "difficulty_breathing_while_lying_down"
    t.boolean  "new_chest_pain_or_discomfort"
    t.boolean  "palpitations"
    t.boolean  "new_leg_swelling"
    t.boolean  "coughing_up_blood"
    t.boolean  "new_shortness_of_breath"
    t.boolean  "vomiting_blood"
    t.boolean  "bloody_stools"
    t.boolean  "new_abdominal_pain"
    t.boolean  "blood_in_urine"
    t.boolean  "new_inability_to_control_bladder"
    t.boolean  "gout"
    t.boolean  "rash"
    t.boolean  "new_open_wound"
    t.boolean  "brief_paralysis"
    t.boolean  "new_numbness"
    t.boolean  "new_tingling"
    t.boolean  "excessive_thirst"
    t.boolean  "excessive_hunger"
    t.boolean  "abnormal_bruising"
    t.boolean  "hives"
    t.boolean  "hiv_exposure"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "password_digest"
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
