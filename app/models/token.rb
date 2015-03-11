class Token < ActiveRecord::Base
  attr_accessible :created_by, :ost_session_id, :token
  belongs_to :session, foreign_key: "ost_session_id"
end
