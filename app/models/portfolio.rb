class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  #scope :html, -> { where(subtitle: 'HTML') }
  def self.html
    where(subtitle: 'HTML')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
  #def self.ruby_on_rails
  # where(subtitle: 'Ruby on Rails')
  #end

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end
end
