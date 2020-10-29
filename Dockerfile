FROM ruby:2.7-slim
WORKDIR /honey
COPY ./honey/ .
CMD ["ruby", "pentbox.rb"]
