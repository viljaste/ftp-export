# ftp-export

## Usage

    ftp-export <SOURCE> <HOSTNAME> <USERNAME> <PASSWORD> <DESTINATION> [REMOTE_DIRECTORY]

## Install

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/ftp-export.git "${TMP}" \
      && sudo cp "${TMP}/ftp-export.sh" /usr/local/bin/ftp-export \
      && sudo chmod +x /usr/local/bin/ftp-export

## License

**MIT**
