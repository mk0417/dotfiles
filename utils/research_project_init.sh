#!/bin/bash

git_dir="Git"
# Input: project name
read -p "Project name: " project_name
# convert spaces to underscore if user input has spaces
project_name=${project_name// /_}
printf "\n"

dir_check=~/$git_dir/$project_name

if [ -d $dir_check ]; then
    printf "$dir_check already exists !!!\n"
    printf "Please re-run the script and apply new project name\n"
else
    mkdir -p ~/$git_dir/$project_name/{src,data/{raw,src},table,figure,literature,paper}
    cd ~/$git_dir/$project_name
    git init
    touch .gitignore

    cat > ~/$git_dir/$project_name/.gitignore <<EOF
.DS_Store
data/
table/
figure/
literature/
paper/
EOF

    git add .gitignore
    git commit -m 'add .gitignore'
    printf "\n==============================\n"
    printf "Git folder is generated ...\n"
    printf "My code will be under version control\n\n"
    find ~/$git_dir/$project_name -type d -maxdepth 2 -not -path '*/.*' -print
    printf "==============================\n\n"

    printf "Enjoy research !!!\n"
fi
