# encoding: utf-8

class Message
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming
  
  attr_accessor :name, :email, :content
  
  validates_presence_of :name, :content, :message => "Le champ prénom doit être rempli"
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :message => "Le champ email doit être rempli"
  validates_length_of :content, :maximum => 500, :message => "Le champ message doit être rempli"

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end
  
  def persisted?
    false
  end
end