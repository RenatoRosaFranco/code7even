module Filterable
  extend ActiveSupport::Concern

  module ::ClassMethods
    def filters(filter)
      results = unscoped
      filter.each do |key, value| do
        results = results.public_send(key, value) if present?(value)
      end
      results
    end
  end

  private

  def present?(value)
    (obj.present?) ? true : false
  end
end
