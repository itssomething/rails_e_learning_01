class QuestionBanksController < ApplicationController
  before_action :find_question_bank, only: [:edit, :update, :show, :destory]
  def index
    @question_banks = QuestionBank.all
  end

  def new
    @question_bank = QuestionBank.new
    question = @question_bank.questions.build
  end

  def create
    @question_bank = QuestionBank.new question_bank_params
    @question_bank.category_id = 1
    if @question_bank.save
      flash[:success] = "Saved"
      redirect_to root_path
    else
      flash[:warning] = "Error"
      render :new
    end
  end

  def show
    @questions = @question_bank.questions
  end

  def edit
  end

  def update
    if @question_bank.update_attributes question_bank_params
      flash[:success] = t ".save_success"
      redirect_to @question_bank
    else
      flash[:danger] = t ".save_failed"
      render :edit
    end
  end

  def destroy
  end

  private

  def question_bank_params
    params.require(:question_bank).permit(:name,
      questions_attributes: [:id, :content, :multi_correct, answers_attributes: [:id,
        :content, :correctness]])
  end

  def find_question_bank
    @question_bank = QuestionBank.find_by id: params[:id]
  end
end
