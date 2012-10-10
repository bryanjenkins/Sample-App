class Form < ActiveRecord::Base
  belongs_to :user

  attr_accessible :alcohol, :allergies, :family_history, :medical_history, :medication, :smoke, :surgery_history
  serialize :family_history
  serialize :medical_history

  default_scope order: 'forms.created_at DESC'
end
