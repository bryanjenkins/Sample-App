class Form < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  has_one :medical_history
  has_one :family_history
  has_one :symptom
  accepts_nested_attributes_for :medical_history, :allow_destroy => true
  accepts_nested_attributes_for :family_history, :allow_destroy => true
  accepts_nested_attributes_for :symptom, :allow_destroy => true

  attr_accessible :alcohol, :allergies, :medication, :smoke, :surgery_history, :medical_history_attributes, :symptom_attributes, :family_history_attributes, :patient_id
  default_scope order: 'forms.created_at DESC'
end
