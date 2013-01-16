git checkout master && \
rm -rf .awestruct/ .sass-cache/ _site/ && \
git checkout develop && \
git reset HEAD --hard && \
awestruct && \
awestruct --deploy -P production && \
git reset HEAD --hard && \
git checkout develop
