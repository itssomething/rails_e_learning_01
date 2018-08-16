class ExamsController < ApplicationController
  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new exam_params
    if @exam.save
      flash[:success] = t ".exam_saved"
      redirect_to root_path
    else
      flash[:warning] = t ".exam_error"
      render :new
    end
  end

  private

  def exam_params
    params.require(:exam).permit :name, :question_bank_id, :duration,
      :limit_chance, :question_numbers, :min_to_pass
  end
end
