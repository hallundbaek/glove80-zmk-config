#!/bin/sh


if sudo true; then
  if mv ~/Downloads/glove80.uf2.zip .; then
    unzip glove80.uf2.zip
    rm glove80.uf2.zip
  else
    if ! stat glove80.uf2; then
      exit 1
    fi
  fi

  echo "Mounting and rebinding in 5.."
  sleep 1
  echo "4.."
  sleep 1
  echo "3.."
  sleep 1
  echo "2.."
  sleep 1
  echo "1.."
  sleep 1

  sudo mount /dev/sda /mnt
  sudo mv ./glove80.uf2 /mnt
  sudo umount /dev/sda
fi


