class Session < ActiveRecord::Base
  attr_accessible :description, :name, :ost_session_id
  self.primary_key = 'ost_session_id'
  has_many :tokens, foreign_key: "ost_session_id", dependent: :destroy
end
