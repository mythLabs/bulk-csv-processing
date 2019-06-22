class HomeController < ApplicationController
    def index
        #ReadCsvJob.perform_later
    end

    def upload_csv
        
        dir = Rails.root.join('public', 'uploads')

        Dir.mkdir(dir) unless Dir.exist?(dir)

        @incoming_file = params['upload']['csv']
        file_name = "#{rand(34999999)}_file"
        
        File.open(dir.join(file_name), 'wb') do |file|
            file.write(@incoming_file.read)
          end
       
        
        ReadCsvJob.perform_later(dir.join(file_name).to_s)
        
    end


end
