# frozen_string_literal: true

# Redirects based on the format.
module Redirectable
  extend ActiveSupport::Concern

  def empty_response_or_root_path(path = root_path)
    respond_to do |format|
      format.html { redirect_to path }
      format.js { head :ok }
      format.json { head :no_content }
    end
  end
end
