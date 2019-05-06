FROM ruby:2.6

WORKDIR /app
ENV SINK null
ENV SOURCE null

RUN apt-get update && apt-get install -y net-tools && apt-get clean && rm -rf /var/lib/apt/lists

# Install gems
ADD src/Gemfile* /app
RUN bundle install

# Upload source
ADD src /app

# Start server
ENV PORT 3001
EXPOSE 3001
CMD ["ruby", "server.rb"]
