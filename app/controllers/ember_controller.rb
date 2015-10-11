class EmberController < ApplicationController
  def frontend
    respond_to do |format|
      format.any { render template: 'ember/frontend' }
    end
  end
end
