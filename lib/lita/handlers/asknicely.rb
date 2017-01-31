module Lita
  module Handlers
    class Asknicely < Handler
      config :domain, type: String, required: true
      config :api_key, type: String, required: true

      route(
        /^nps
        (\s(?<days>\d+))?
        /x,
        :score,
        command: true,
        help: {
          t('help.score.syntax') => t('help.score.desc')
        }
      )

      def score(response)
        days = response.match_data['days'] || 30
        response.reply(
          render_template('score',
                          days: days,
                          score: fetch_score(days))
        )
      end

      private

      def fetch_score(days)
        # TODO: Cache results for 60 seconds
        url = "https://#{config.domain}.asknice.ly/api/v1/getnps/#{days}"
        url += "?X-apikey=#{config.api_key}"

        response = http.get(url)

        if response.status != 200
          Lita.logger.error("Received error from Asknice.ly: #{http_response}")

          # TODO: Consider a more user friendly error
          return -100
        end

        MultiJson.load(response.body)['NPS']
      end

      Lita.register_handler(self)
    end
  end
end
