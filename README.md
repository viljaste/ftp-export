# ftp-export

## Usage

    ftp-export <EXPORTED_FILES> <HOSTNAME> <USERNAME> <PASSWORD> <BACKUP_PATH> [REMOTE_DIRECTORY]

## Install

    TMP="$(mktemp -d)" \
      && git clone http://git.simpledrupalcloud.com/simpledrupalcloud/ftp-export.git "${TMP}" \
      && sudo cp "${TMP}/ftp-export.sh" /usr/local/bin/ftp-export \
      && sudo chmod +x /usr/local/bin/ftp-export

## License

**MIT**
