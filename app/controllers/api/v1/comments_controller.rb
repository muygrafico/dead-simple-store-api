module Api
  module V1
    class CommentsController < ApplicationController
      before_action :set_comment, only: [:show, :update, :destroy]

      def create
        comment = Comment.new(comment_params)
        comment.publication_id = params[:publication_id]
        comment.user_id = @current_user.id
        if comment.save!
          render json: {'status': 'comment created!'}
        else
          render json: {'status': 'comment not created'}
        end
      end

      def update
        if comment.update_attributes(comment_params)
          render json: {'status': 'comment updated!'}
        else
          render json: {'status': 'comment was not updated'}
        end
      end

      def show
        render json: comment, adapter: :json
      end

      def destroy
        if comment.destroy
          render json: {'status': 'comment deleted!'}
        else
          render json: {'status': 'comment was not deleted'}
        end
      end

      private

      def comment_params
        params.require(:comment).permit(:body)
      end

      def set_comment
        comment = Comment.find(params[:id])
      end
    end
  end
end
