sudo apt-get install git

###########################
##			##
##	GIT FOLDER 	##
##    INITIALIZATION    ##
##       SCRIPT	        ##
##       BY: ASIF	##
##			##
##########################

echo " Please edit parameters inside the script first, example USERNAME?,EMAIL"

USERNAME=ASif2660
EMAIL=mdasifchand@gmail.com
LOCALREPO=scripts
FILES="github.sh README" #files are to be added here  
MESSAGE='adding files related to script'


git config --global user.name "$USERNAME"
git config --global user.email "$EMAIL"



echo " creating a local repo "

git init $LOCALREPO

# if it's successfully created you should read Initialized empty git repository

cd $LOCALREPO

gedit README

echo "adding files"

git add *

echo " committing them" 

git commit -m " $MESSAGE"

echo " create a repository on github website now "

echo " THe name of repo shoudl be similar to the name of the local repo "

read -r -p "DId you create it already ? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
    git remote add origin https://github.com/$USERNAME/$LOCALREPO.git        
    git push origin master
        ;;
    *)
        exit 1
        ;;
esac

