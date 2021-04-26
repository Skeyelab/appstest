# frozen_string_literal: true

module FlashesHelper
  # :nocov:
  def user_facing_flashes
    flash.to_hash.slice('alert', 'error', 'notice', 'success')
  end
  # :nocov:
end
