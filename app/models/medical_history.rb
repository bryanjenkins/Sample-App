class MedicalHistory < ActiveRecord::Base
  belongs_to :form
  attr_accessible :anemia, :anxiety, :arrhythmia_pacemaker, :asthma, :back_pain, :blindness, :blood_vessel_disease, :chrons_disease, :clotting_problems, :congenital_condition, :congestive_heart_failure, :copd, :coumadin, :deafness, :depression, :disc_bulge_cervical_spine, :diverticulitis, :form_id, :heart_attack, :hiatal_hernia, :hypertension, :irritable_bowel_disease, :kidney_disease, :liver_disease, :lupus, :neck_pain, :none, :osteoarthritis, :other_abdomen, :other_heart, :other_medical_history, :other_nervous_disorder, :paralysis, :parkinsons, :rheumatoid_arthritis, :stents_bypass, :stroke, :thyroid_disease, :ulcer, :ulcer_healed, :vertigo, :diabetes
end
