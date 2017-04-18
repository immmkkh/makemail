require 'mailgun'
class MailController < ApplicationController
  def lotte
  end
  def send_lotte
    @email = params[:email]
    @title = params[:title]
    @name = params[:name]
    @content = params[:content]
    
    mg_client = Mailgun::Client.new("key-6546b3b9ee5ad24e2b9f75c41887f9fe")

      message_params =  {
                   from: @email,
                   to:   'immmkkh@likelion.org',
                   subject: "[ "+@name+" ]" + @title,
                   text:    @content
                  }

      result = mg_client.send_message('sandbox64e8eb7cbe074ea8bc465a5f837e4ae6.mailgun.org', message_params).to_h!
      
      redirect_to "/mail/lotte"
  
  end
end
