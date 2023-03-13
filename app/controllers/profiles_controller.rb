class ProfilesController < ApplicationController

  def definition
    # answers =
  end

  def define
    @answers = form_params.to_hash
    result = scoring.max_by{|k,v| v}.first
    profile = Profile.find_my_profile(result)

    current_user.update(profile_id: profile.id)
    raise
    redirect_to :user_dashboard
  end

  private

  def form_params
    params.permit("Q1", "Q2", "Q3", "Q4", "Q5")
  end

  def scoring
    scoring =  {
      P1: @answers.values.count('P1'),
      P2: @answers.values.count('P2'),
      P3: @answers.values.count('P3'),
      P4: @answers.values.count('P4')
    }
  end
end
