class ProfilesController < ApplicationController

  def definition
    # answers =
  end

  def define
    answers = form_params.to_hash

    p1 = {
      profile_id: 1,
      count: 0
    }
    p2 = {
      profile_id: 2,
      count: 0
    }
    p3 = {
      profile_id: 3,
      count: 0
    }
    p4 = {
      profile_id: 4,
      count: 0
    }

    # p1 = 0
    # p2 = 0
    # p3 = 0
    # p4 = 0

    # attributing points:
    case answers["Q1"]
      when "A1"
        p2[:count] += 1
      when "A2"
        p1[:count] += 1
      when "A3"
        p4[:count] += 1
      when "A4"
        p3[:count] += 1
    end

    case answers["Q2"]
      when "A1"
        p3[:count] += 1
      when "A2"
        p2[:count] += 1
      when "A3"
        p1[:count] += 1
      when "A4"
        p4[:count] += 1
    end

    case answers["Q3"]
      when "A1"
        p4[:count] += 1
      when "A2"
        p3[:count] += 1
      when "A3"
        p2[:count] += 1
      when "A4"
        p1[:count] += 1
    end

    case answers["Q4"]
      when "A1"
        p1[:count] += 1
      when "A2"
        p4[:count] += 1
      when "A3"
        p3[:count] += 1
      when "A4"
        p2[:count] += 1
    end

    case answers["Q5"]
      when "A1"
        p3[:count] += 1
      when "A2"
        p1[:count] += 1
      when "A3"
        p4[:count] += 1
      when "A4"
        p2[:count] += 1
     end

    #  profile_points = [p1, p2, p3, p4].sort.reverse!.first

     raise
  end


  # def switch
  # end

  private

  def form_params
    params.permit("Q1", "Q2", "Q3", "Q4", "Q5")
  end

end
