require 'net/http'

module ElasticEmail
  class Client

    def send_message(options)
      Net::HTTP.post_form(elastic_email_uri, options)
    end

    def elastic_email_uri
      URI.parse(elastic_email_send_url)
    end

    def elastic_email_send_url
      'https://api.elasticemail.com/v2/email/send'
    end

  end
end
