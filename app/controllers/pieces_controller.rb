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
end
