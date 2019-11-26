class FeedbackController < ApplicationController
  def create
    feedback = Feedback.new(feedback_params)

    if feedback.save
      render json: feedback
    else
      render json: { error: 'No feedback for you!' }
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:content, :dancer_id)
  end
end