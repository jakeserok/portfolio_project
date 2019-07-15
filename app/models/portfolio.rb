class Portfolio < ApplicationRecord
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
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end
