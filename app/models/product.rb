class Product < ActiveRecord::Base

  validates_presence_of :en_name
  validates_presence_of :zh_cn_name
  belongs_to :category
  validates_presence_of :category
  validates_presence_of :category_id

  def name
    send(I18n.locale.to_s + "_name")
  end

  def body
    send(I18n.locale.to_s + "_body")
  end

  def whitepaper
    send(I18n.locale.to_s + "_whitepaper")
  end


end