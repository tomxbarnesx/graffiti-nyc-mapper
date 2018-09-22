class PiecesController < ApplicationController
    def index
        @pieces = Piece.all
    end

    def new
        @piece = Piece.new
    end

    def create
        @piece = Piece.new(piece_params)
        @piece.user_id = current_user.id
        
        if @piece.save
            render '/pieces/index'
        else
            render 'new'
        end

    end

private

    def piece_params
        params.require(:piece).permit(:title, :lat, :lng, :address, :marker_type, :user_id, :photo)
    end

end
