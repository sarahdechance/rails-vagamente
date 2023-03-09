class ProfilesController < ApplicationController

  def definition
    # answers =
  end

  def define
    answers = form_params.to_hash
    raise

    # p1 = 0
    # p2 = 0
    # p3 = 0
    # p4 = 0

    # attributing points from Q1:
    # case answers[:Q1]
      # when == "A1"
        # pX =+ 1
      # when == "A2"
        # pX =+ 1
      # when == "A3"
        # pX =+ 1
      # when == "A4"
        # pX =+ 1
    # end

    # answers.each do |question, answer|
      # case answer
        # when == "A1"
          # pX =+ 1
        # when == "A2"
          # pX =+ 1
        # when == "A3"
          # pX =+ 1
        # when == "A4"
          # pX =+ 1
      # end
    # end
  end


  # def switch
  # end

  private

  def form_params
    params.permit(:Q1, "Q2", "Q3", "Q4", "Q5")
  end

end
