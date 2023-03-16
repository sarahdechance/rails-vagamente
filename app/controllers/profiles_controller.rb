class ProfilesController < ApplicationController

  def definition
    # answers =
  end

  def define
    form_keys = ["Q1", "Q2", "Q3", "Q4", "Q5"]
    @answers = {}
    form_keys.each { |key| @answers[key] = params[key] }

    result = scoring.max_by{|k,v| v}.first
    profile = Profile.find_my_profile(result)

    current_user.update(profile_id: profile.id)
    redirect_to profiles_results_path
  end

  def results
    @profile_result = current_user.profile
  end


  private

  def scoring
    scoring =  {
      P1: @answers.values.flatten.count('P1'),
      P2: @answers.values.flatten.count('P2'),
      P3: @answers.values.flatten.count('P3'),
      P4: @answers.values.flatten.count('P4')
    }
  end

  def form_params
    params.permit("Q1", "Q2", "Q3", "Q4", "Q5")
  end

end
