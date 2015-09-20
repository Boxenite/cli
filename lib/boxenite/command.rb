require 'pry'
module Boxenite
  class Command
    class << self
      def exec(args)
        resp = RestClient.post url, { command: args.join(' ') }.to_json,
          content_type: :json, accept: :json
        puts 'Done'
        binding.pry
        puts resp.to_str
      end

      def url
        "#{HOST}:#{PORT}/command"
      end
    end
  end
end
