class MutantsController < ApplicationController
  before_action :set_mutant, only: [:edit, :update, :destroy]
  before_action :load_teams, only: [:new, :edit, :create, :update]

  def index
    @mutants = Mutant.all
  end

  def new
    @mutant = Mutant.new
  end

  def edit
  end

  def create
    @mutant = Mutant.new(mutant_params)

    if @mutant.save
      redirect_to mutants_path, notice: 'Mutant was successfully created.'
    else
      render :new
    end
  end

  def update
    if @mutant.update(mutant_params)
      redirect_to mutants_path, notice: 'Mutant was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @mutant.destroy
    redirect_to mutants_url, notice: 'Mutant was successfully destroyed.'
  end

  private
  def set_mutant
    @mutant = Mutant.includes(:team).find(params[:id])
  end

  def load_teams
    @teams = Team.all
  end

  def mutant_params
    params.require(:mutant).permit(:name, :team_id)
  end
end
