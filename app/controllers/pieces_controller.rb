class PiecesController < ApplicationController
    def index
        @pieces = Piece.all
        @plength = @pieces.length

        # revisit this workaround
        @latArray = []
        @lngArray = []

        @pieces.each do |p| 
            @latArray.push(p.lat)
            @lngArray.push(p.lng)
        end
        # ^^^

        @lat = 40.706444
        @lng = -73.922721
    end

    def new
        @piece = Piece.new
    end

    def create
        @piece = Piece.new(piece_params)

        if @piece.save
            render '/pieces/index'
        else
            render 'new'
        end

    end 

    def piece_params
        params.require(:piece).permit(:title, :lat, :lng, :address, :marker_type)
    end

end
