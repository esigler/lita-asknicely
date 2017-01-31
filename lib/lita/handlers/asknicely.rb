module Lita
  module Handlers
    class Asknicely < Handler
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
        # CACHE
        62.5
      end

      Lita.register_handler(self)
    end
  end
end
