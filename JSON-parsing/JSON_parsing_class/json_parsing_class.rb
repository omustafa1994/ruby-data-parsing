require 'json'

class ParseJson

    attr_accessor :json_data

    def initialize(json_file)
        @json_data = JSON.parse(File.read(json_file))
    end

    def get_base
        @json_data['base']
    end

    def get_rates
        @json_data['rates']
    end

    def get_date
        @json_data['date']
    end
end

# run = ParseJson.new('json_exchange_rates.json')

# p run.json_data