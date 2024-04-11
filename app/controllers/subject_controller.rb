class SubjectController < ApplicationController
  layout 'admin'
  http_basic_authenticate_with name: "dhh", password: "dhh", except: [:index, :show]
  def index
    @subjects = Subject.sorted
  explicit_block { puts "Explicit block called" }
  do_something_with_block
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Subject created successfully...." 
      redirect_to('/subject')
    else
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      flash[:notice] = "Subject updated successfully...." 
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject removed successfully...." 
    redirect_to('/subject')
  end

  def explicit_block(&block)
    block.call
  end

  def do_something_with_block
    return "No block given" unless block_given?
    yield
  end

  private
  def subject_params
    params.require(:subject).permit(:name,:postition,:visible)
  end
  
end
