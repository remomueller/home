# frozen_string_literal: true

# An item is stored in a box and is found a location of the home.
class Item < ApplicationRecord
  # Concerns
  include Searchable

  # Methods
  def self.searchable_attributes
    %w(name location description)
  end
end
