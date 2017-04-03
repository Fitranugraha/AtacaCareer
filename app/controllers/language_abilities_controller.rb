class LanguageAbilitiesController < ApplicationController
  before_action :set_language_ability, only: [:show, :edit, :update, :destroy]

  # GET /language_abilities
  def index
    @language_abilities = LanguageAbility.all
  end

  # GET /language_abilities/1
  def show
  end

  # GET /language_abilities/new
  def new
    @language_ability = LanguageAbility.new
  end

  # GET /language_abilities/1/edit
  def edit
  end

  # POST /language_abilities
  def create
    @language_ability = LanguageAbility.new(language_ability_params)

    if @language_ability.save
      redirect_to @language_ability, notice: 'Language ability was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /language_abilities/1
  def update
    if @language_ability.update(language_ability_params)
      redirect_to @language_ability, notice: 'Language ability was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /language_abilities/1
  def destroy
    @language_ability.destroy
    redirect_to language_abilities_url, notice: 'Language ability was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_ability
      @language_ability = LanguageAbility.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def language_ability_params
      params.require(:language_ability).permit(:profile_id, :language, :speech, :writing, :reading, :notes)
    end
end
