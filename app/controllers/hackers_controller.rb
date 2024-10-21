class HackersController < ApplicationController

  # GET /hackers/new
  def new
    @hacker = Hacker.new
  end
  # POST /hackers
  def create
    @hacker = Hacker.new(hacker_params)

    if @hacker.save
      redirect_to users_path, notice: "Hacker was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def hacker_params
      params.require(:hacker).permit(:age)
    end
end
