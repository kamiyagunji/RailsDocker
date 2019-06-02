# Railsコンテナ用Dockerfile

# イメージのベースラインにRuby2.5.1を指定
FROM ruby:2.5.1
# Railsに必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y build-essential nodejs
# ルートディレクトリを作成
RUN mkdir /app
# 作業ディレクトリを指定
WORKDIR /app
# ローカルのGemfileとGemfile.lockをコピー
COPY src/Gemfile /app/Gemfile
COPY src/Gemfile.lock /app/Gemfile.lock
# Gemのインストール実行
RUN bundle install
# ローカルのsrcをコピー
# COPY src /app