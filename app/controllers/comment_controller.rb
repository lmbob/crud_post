class CommentController < ApplicationController
  def reply_create
      new_r = Reply.new
      new_r.editor= params[:editor]
      new_r.content= params[:content]
      new_r.post_id= params[:p_id]
      new_r.save
        
        redirect_to :back
        
  end

  def reply_delete
      delete_r=Reply.find(params[:reply_id])
      delete_r.destroy
        
      redirect_to:back
    
  end
end
