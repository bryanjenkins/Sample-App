class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.integer :form_id
      t.boolean :none
      t.boolean :blindness
      t.boolean :deafness
      t.boolean :vertigo
      t.boolean :disc_bulge_cervical_spine
      t.boolean :thyroid_disease
      t.boolean :asthma
      t.boolean :copd
      t.boolean :heart_attack
      t.boolean :arrhythmia_pacemaker
      t.boolean :congestive_heart_failure
      t.boolean :hypertension
      t.boolean :congenital_condition
      t.boolean :stents_bypass
      t.boolean :blood_vessel_disease
      t.text :other_heart
      t.boolean :ulcer
      t.boolean :ulcer_healed
      t.boolean :hiatal_hernia
      t.boolean :liver_disease
      t.boolean :kidney_disease
      t.boolean :irritable_bowel_disease
      t.boolean :chrons_disease
      t.boolean :diverticulitis
      t.boolean :other_abdomen
      t.boolean :stroke
      t.boolean :parkinsons
      t.boolean :paralysis
      t.boolean :anemia
      t.boolean :clotting_problems
      t.boolean :coumadin
      t.boolean :neck_pain
      t.boolean :back_pain
      t.boolean :osteoarthritis
      t.boolean :rheumatoid_arthritis
      t.boolean :lupus
      t.boolean :depression
      t.boolean :anxiety
      t.text :other_nervous_disorder
      t.text :other_medical_history

      t.timestamps
    end
  end
end
