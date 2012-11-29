class CreateSymptoms < ActiveRecord::Migration
  def change
    create_table :symptoms do |t|
      t.integer :form_id
      t.boolean :new_complaints
      t.boolean :fever
      t.boolean :weight_loss
      t.boolean :weight_gain
      t.boolean :blurring
      t.boolean :loss_of_vision
      t.boolean :ringing_in_the_ears
      t.boolean :decreased_hearing
      t.boolean :difficulty_breathing_while_lying_down
      t.boolean :new_chest_pain_or_discomfort
      t.boolean :palpitations
      t.boolean :new_leg_swelling
      t.boolean :coughing_up_blood
      t.boolean :new_shortness_of_breath
      t.boolean :vomiting_blood
      t.boolean :bloody_stools
      t.boolean :new_abdominal_pain
      t.boolean :blood_in_urine
      t.boolean :new_inability_to_control_bladder
      t.boolean :gout
      t.boolean :rash
      t.boolean :new_open_wound
      t.boolean :brief_paralysis
      t.boolean :new_numbness
      t.boolean :new_tingling
      t.boolean :excessive_thirst
      t.boolean :excessive_hunger
      t.boolean :abnormal_bruising
      t.boolean :hives
      t.boolean :hiv_exposure

      t.timestamps
    end
  end
end
