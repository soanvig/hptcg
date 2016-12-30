class PagesController < ApplicationController
    def show
        @page = params[:page]
        begin
            render template: "pages/#{@page}"
        rescue ActionView::MissingTemplate
            # template doesn't exist
            render :status => 404
        end
    end
end