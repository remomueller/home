# frozen_string_literal: true

# A box contains many items and can be opened or closed.
class Box < ApplicationRecord
  # Validations
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  # Relationships
  # has_many :items

  # Methods
  def items
    Item.where(box: name)
  end
end
