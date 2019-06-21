class HomeController < ApplicationController
    def index
        ReadCsvJob.perform_later
    end
end
