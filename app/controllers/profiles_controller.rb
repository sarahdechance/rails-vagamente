class ProfilesController < ApplicationController

  def definition
    # answers =
  end

  def define
    answers = form_params.to_hash
    raise
    #update current_user.profiling attr_accessor
  end

  private

  def form_params
    params.permit("Q1", "Q2", "Q3", "Q4", "Q5")
  end

end
