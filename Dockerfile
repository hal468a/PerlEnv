# 使用官方 Perl 映像作為基底
FROM perl:latest

# 更新系統並安裝必要工具
RUN apt-get update && apt-get install -y curl

# 安裝 CPAN Minus 工具
RUN curl -L https://cpanmin.us | perl - App::cpanminus

# 使用 CPAN Minus 安裝 Mojolicious
RUN cpanm Mojolicious

# 設定工作目錄
WORKDIR /usr/src/app

# 複製程式碼到容器內
COPY ./app /usr/src/app