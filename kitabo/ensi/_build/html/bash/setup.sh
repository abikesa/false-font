#! /bin/bash

# setup tidy work directory
read -p "Enter your root directory (e.g., ~/documents/rhythm): " ROOT_DIR
read -p "Enter the name of the subdirectory to be built within the root directory: " SUBDIR_NAME
cd $ROOT_DIR && rm -rf * && git clone https://github.com/abikesa/workflow && mv workflow new && new/setup_myenv.sh && source myenv/bin/activate

# template as starting point
read -p "Enter template GitHub repository name: " REPO_NAME
git clone https://github.com/abikesa/$REPO_NAME
mv $REPO_NAME local
cd local/kitabo/ensi
echo 'make updates to $ROOT_DIR/local'


# flick 20250409213603-VW2O
# flick 20250409214209-uYxM
# flick 20250409214625-WVlr
# flick 20250409230604-rxat
# flick 20250409234308-adne
