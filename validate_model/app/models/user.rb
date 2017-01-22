class User < ApplicationRecord
  validates_format_of :name, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
