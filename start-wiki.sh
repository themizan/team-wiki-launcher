REPOSRC=https://github.com/themizan/team-wiki-template.git
LOCALREPO=team-wiki-template

git clone "$REPOSRC" "$LOCALREPO" 2> /dev/null || (cd "$LOCALREPO" ; git pull)
#sudo docker start realms-wiki || sudo docker run --name realms-wiki --mount type=bind,source="$(pwd)"/wiki.db,target=/tmp/wiki.db --mount type=bind,source="$(pwd)/$LOCALREPO",target=/tmp/wiki -p 5000:5000 -d realms/realms-wiki
sudo docker start realms-wiki-team-template 2> /dev/null  || sudo docker run --name realms-wiki-team-template --mount type=bind,source="$(pwd)/$LOCALREPO",target=/tmp/wiki -p 5000:5000 -d realms/realms-wiki
xdg-open http://localhost:5000