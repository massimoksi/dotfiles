#!/usr/bin/env bash

RES=0

for f in *; do
    if [ "$f" != "setup.sh" ]; then
        SRC_PATH=$PWD/$f
        DST_PATH=$HOME/.$f

        # In case of directories it is necessary to delete the target before linking.
        if [ -d "${DST_PATH}" ]; then
            rm -rf "${DST_PATH}"
        fi

        ln -sf "${SRC_PATH}" "${DST_PATH}"
        if [ $? -eq 0 ]; then
            echo -e " [\033[0;32mADD\033[0m] ${DST_PATH}"
			((RES++))
        fi
    fi
done

echo -e "\n${RES} configuration file(s) installed."
