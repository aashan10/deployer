TMP=$PWD
cd $CURRENT_BUILD_DIRECTORY
LOG_DIR=$DEPLOYER_DIRECTORY/logs/$BUILD_NUMBER
mkdir $LOG_DIR

git clone $REMOTE_REPOSITORY . &> $LOG_DIR/clone.log
export NODE_ENV=production
npm install &> $LOG_DIR/install.log
npm run build &> $LOG_DIR/build.log
cd $TMP