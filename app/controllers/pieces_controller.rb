class PiecesController < ApplicationController
    def index
        @pieces = Piece.all
        @plength = @pieces.length
    end

    def new
        @piece = Piece.new
    end

    def create
        @piece = Piece.new(piece_params)
        @piece.user_id = current_user.id
        
        if @piece.save
            flash[:notice] = "Post successfully created"
            redirect_to "/"
        else
            flash[:error] = "We encountered an error creating your post."
            render 'new'
        end

    end

    def destroy
        @piece = Piece.find(params[:id])
        @piece.destroy
        @piece.photo.purge
        flash[:notice] = "Post successfully deleted"
        redirect_to "/"
    end

private

    def piece_params
        params.require(:piece).permit(:title, :lat, :lng, :address, :marker_type, :user_id, :photo, :artist)
    end

end
