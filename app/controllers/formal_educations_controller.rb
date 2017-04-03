class FormalEducationsController < ApplicationController
  before_action :set_formal_education, only: [:show, :edit, :update, :destroy]

  # GET /formal_educations
  def index
    @formal_educations = FormalEducation.all
  end

  # GET /formal_educations/1
  def show
  end

  # GET /formal_educations/new
  def new
    @formal_education = FormalEducation.new
  end

  # GET /formal_educations/1/edit
  def edit
  end

  # POST /formal_educations
  def create
    @formal_education = FormalEducation.new(formal_education_params)

    if @formal_education.save
      redirect_to @formal_education, notice: 'Formal education was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /formal_educations/1
  def update
    if @formal_education.update(formal_education_params)
      redirect_to @formal_education, notice: 'Formal education was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /formal_educations/1
  def destroy
    @formal_education.destroy
    redirect_to formal_educations_url, notice: 'Formal education was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formal_education
      @formal_education = FormalEducation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def formal_education_params
      params.require(:formal_education).permit(:profile_id, :level, :institution, :start_date, :end_date, :certification, :faculty, :department)
    end
end
