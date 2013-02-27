class Patient < ActiveRecord::Base
  attr_accessible :form_id, :name
  has_many :forms
  has_one :user
end
