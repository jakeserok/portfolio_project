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
end
