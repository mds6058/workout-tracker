class Run < ActiveRecord::Base
  attr_accessible :date, :distance, :timeElapsed
  belongs_to :user
end