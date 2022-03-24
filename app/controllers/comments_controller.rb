class CommentsController < ApplicationController
    def new
        @comment=Comment.new
    end
    def create
        if current_user
            @comment= current_user.comments.build(comments_params)
            if @comment.save
                flash[:notice]="Comentario agregado correctamente"
                redirect_to property_show_path(@comment.property_id)
            else
                flash[:notice]="Error, no se pudo agregar el comentario"
                redirect_to property_show_path(@comment.property_id)
            end 
        else
            flash[:notice]="Debes iniciar sesión para comentar"
            redirect_to new_user_session_path
        end
    end
    def delete
        @comment = Comment.find(params[:id])
        if @comment.destroy
            flash[:notice]="Comentario eliminado"
            redirect_to property_show_path(@comment.property_id)
        end
    end 

    private 
    def comments_params
        params.require(:comment).permit(:property_id, :content, :rating)
    end 

end
