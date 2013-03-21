git checkout master && \
git pull && \
rm -rf .awestruct/ .sass-cache/ _site/ && \
git checkout develop && \
git reset HEAD --hard && \
awestruct && \
awestruct --deploy -P production && \
git reset HEAD --hard && \
git checkout develop
