# frozen_string_literal: true

class Goal < ApplicationRecord
  module Donations
    class Create
      include Interactor::Organizer

      organize Setup, ::Donation::Create, Persist
    end
  end
end
