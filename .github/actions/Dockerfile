FROM paperist/texlive-ja:2023-debian

# RUN apt-get update \
#   && apt-get install -y --no-install-recommends \
#   && apt-get clean \
#   && rm -rf /var/lib/apt/lists/*

RUN tlmgr install \
  # `physics` package alternatives
  physics2 fixdif derivative \
  # for psudocode
  algorithms algorithmicx

# https://texwiki.texjp.org/?LaTeX%E5%85%A5%E9%96%80%2F%E5%90%84%E7%A8%AE%E3%83%91%E3%83%83%E3%82%B1%E3%83%BC%E3%82%B8%E3%81%AE%E5%88%A9%E7%94%A8#tc299bdb
RUN mktexlsr && mkdir -p /app
WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
