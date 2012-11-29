class Symptom < ActiveRecord::Base
  belongs_to :form
  attr_accessible :abnormal_bruising, :blood_in_urine, :bloody_stools, :blurring, :brief_paralysis, :coughing_up_blood, :decreased_hearing, :difficulty_breathing_while_lying_down, :excessive_hunger, :excessive_thirst, :fever, :form_id, :gout, :hiv_exposure, :hives, :loss_of_vision, :new_abdominal_pain, :new_chest_pain_or_discomfort, :new_complaints, :new_inability_to_control_bladder, :new_leg_swelling, :new_numbness, :new_open_wound, :new_shortness_of_breath, :new_tingling, :palpitations, :rash, :ringing_in_the_ears, :vomiting_blood, :weight_gain, :weight_loss
end
