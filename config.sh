#!/bin/bash
 
echo "copying nvim config to /home/$USER/.config"
cp -r nvim /home/$USER/.config

exit_status=$?
if [ $exit_status -ne 0 ]; then 
  echo "error trying to copy nvim config"
  exit 1;
fi

echo "files where successfully copied"
echo "\nstarting tmux setup"
echo "\nclonning plugin manager's github repository\n"

git clone https://github.com/tmux-plugins/tpm /home/$USER/.tmux/plugins/tpm
exit_status=$?
if [ $exit_status -ne 0 ]; then 
  echo "error trying to clone repository"
  exit 1;
fi

echo "copying .tmux.conf to /home/$USER/.tmux.conf"

cp .tmux.conf /home/$USER
exit_status=$?
if [ $exit_status -ne 0 ]; then 
  echo "error trying to copy tmux config"
  exit 1;
fi

echo "config was successfully done!"

