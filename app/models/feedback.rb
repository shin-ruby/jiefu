# -*- encoding : utf-8 -*-
class Feedback < ActiveRecord::Base
  #validates_presence_of :product_name
  validates :name,:comany,:department,:phone,:fax, :presence => true
  validates :phone,:fax, :numericality => { :only_integer => true }
end
