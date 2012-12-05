class FamilyHistory < ActiveRecord::Base
  belongs_to :form
  attr_accessible :cancer, :heart_disease, :kidney_disease, :lung_disease, :other, :rheumatoid_arthritis
end
