class ChallengeStepsController < ApplicationController
	before_action :set_challenge
	before_action :set_challenge_step, only: [:show, :update]

	def index
	end

	def show
	end

	def new
		@challenge_step = ChallengeStep.new
	end

	def create
		@challenge_step = current_user.challenge_steps.build(params[:challenge_step])

    respond_to do |format|
      if @challenge_step.save
        format.html { redirect_to @challenge, notice: 'Challenge was successfully created.' }
        format.json { render action: 'show', status: :created, location: @challenge }
      else
        format.html { render action: 'new' }
        format.json { render json: @challenge.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  	respond_to do |format|
      if @challenge_step.update(challenge_step_params)
      	next_answer = @challenge.challenge_step.where(chosen_answer_id: nil).first
        format.html { redirect_to [@challenge, next_answer] }
      else
        format.html { render action: 'show' }        
      end
    end
  end

 private

 	def set_challenge
 		@challenge = Challenge.find(params[:challenge_id])
 	end

 	def set_challenge_step
 		@challenge_step = ChallengeStep.find(params[:id])
 	end

  def answer_params
    params.require(:challenge_step).permit(:chosen_answer_id)
  end

end