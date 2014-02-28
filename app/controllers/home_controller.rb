class HomeController < ApplicationController

  def index
  end

  def new
    @draft = Draft.new
  end

  def create    
    
    flash[:success] = t('email.success_sent')
    redirect_to action: 'index'
  end

  def create_draft
    @draft = Draft.new(params[:draft])
    if @draft.save
      flash[:success] = t('email.success_saved_as_draft')
      redirect_to action: 'index'
    else
      flash.now[:alert] = t('email.fail_sent')
      render :new
    end
  end

end
