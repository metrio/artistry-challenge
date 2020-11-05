class ArtistInstrumentsController < ApplicationController


    def new
        @artist_instrument = ArtistInstrument.new
        render :new
    end

    def create
        @artist_instrument = ArtistInstrument.new(ai_params)
        if @artist_instrument.save
        redirect_to artist_path(ai_params[:artist_id])
        end
    end


    private
    def ai_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

    

end #end of class