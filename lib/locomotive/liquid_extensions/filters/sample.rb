module Locomotive
  module LiquidExtensions
    module Filters
      module Sample

        def sample(input, number = 1, response = nil)
          if input.respond_to?(:all) # Content type collection
            response = number > 1 ? input.all.sample(number) : input.all.sample
          else
            response = number > 1 ? input.sample(number) : input.sample
          end

          return response.body
        end

      end

    end
  end
end