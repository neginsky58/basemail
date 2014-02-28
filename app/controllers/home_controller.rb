class HomeController < ApplicationController
 
  def new
    @draft = Draft.new
  end

  def create
    respond_to do |format|
      # if params[:commit] == 'Send'
      #   if is_a_valid_email(params[:to])
      #     ActionMailer::Base.mail(:from => "yevgeny@example.com", :to => params[:to], :subject => params[:subject], :body => params[:body]).deliver      
      #     flash[:success] = t('email.success_sent')        
      #     format.html { redirect_to root_url }
      #     format.json
      #   else
      #     flash.now[:alert] = t('email.invalidate_recipient_email')        
      #     format.html { render :new }
      #     format.json
      #   end
      # elsif params[:commit] == 'Save as draft'
      #   @draft = Draft.new(draft_params)
      #   if @draft.save
      #     flash[:success] = t('email.success_saved_as_draft')
      #     format.html { redirect_to root_url }
      #     format.json          
      #   else
      #     flash.now[:alert] = t('email.fail_sent')
      #     format.html { render :new }
      #     format.json
      #   end
          format.html { redirect_to root_url }
          format.json  

      
      # end
    end
  end

  def is_a_valid_email(email)
    email_regex = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
    (email =~ email_regex)
  end

  private
  def draft_params
    params.require(:draft).permit(:to, :subject, :body, :file)
  end

end
