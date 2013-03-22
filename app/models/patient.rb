class Patient < ActiveRecord::Base
  attr_accessible :form_id, :name
  has_many :forms
  has_one :user

  def self.search(search)
    if search
      where('lower(name) like ?', "%#{search.downcase}%")
    else
      scoped
    end
  end
end
