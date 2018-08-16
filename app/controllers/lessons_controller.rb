class LessonsController < ApplicationController
  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new lesson_params
    @lesson.user_id = 1

    if @lesson.save
      add_question_to_lesson
      flash[:success] = t ".lesson_created"
      redirect_to root_path
    else
      flash[:warning] = t ".lesson_error"
      redirect_to exams_path
    end
  end

  def show
    @lesson = Lesson.find_by id: params[:id]
    @results = @lesson.results
    @questions = Question
                 .where(id: @lesson.results.map(&:question_id))
                 .includes :answers
  end

  private

  def lesson_params
    params.permit :exam_id
  end

  def add_question_to_lesson
    questions = @lesson.exam.question_bank.questions.order("RAND()")
                       .limit(@lesson.exam.question_numbers).ids.to_a
    questions.each do |q|
      @result = Result.new
      @result.lesson_id = @lesson.id
      @result.question_id = q
      @result.save
    end
  end
end
