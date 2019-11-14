class ResponsesController < ApplicationController

    before_action :define_question, :define_response

    def new
    end

    def define_question
        @question = Question.order("RANDOM()").limit(1)[0]
    end

    def define_response
        @questionResponse = Response.new({ question: @question })
    end

    def create
        # declare a variable to hold the incrementing correct count
        # @number_correct = 0
        # if !cookies[:number_correct]
        #     cookies[:number_correct] = 0
        # end
        session[:number_correct] ||= 0
        # byebug
        response = Response.create(response_params)
        if response.question.correct_answer == response.answer
            # increment the correct count
            # @number_correct = @number_correct.to_i + 1
            session[:number_correct] = session[:number_correct].to_i + 1
            # puts "Correct"
            flash[:message] = "YOU DID IT!! Smarty-pants!"
        else
            # puts "Incorrect"
            flash[:message] = "Wrong-o buckaroo! Try again."
        end
        # byebug
        redirect_to '/random-question'
    end

    def response_params
        params.require(:response).permit(:answer_id, :question_id)
    end

end
