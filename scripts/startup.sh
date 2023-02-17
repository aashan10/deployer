local separator="$success|${clear}"
print_title "|\t\t\t\t\t\tDeployer v1.0\t\t\t\t\t\t |"
print_row "App ID\t\t\t" "$APP_ID\t\t\t\t\t\t\t\t"
print_row "Deployer Directory\t" "$DEPLOYER_DIRECTORY\t\t\t\t\t"
print_row "App Directory\t\t" "$DEPLOYER_DIRECTORY/$APP_ID\t\t\t\t"
print_row "Release ID\t\t" "$BUILD_NUMBER\t\t\t\t\t\t\t"
print_row "Release Directory\t" "$DEPLOYER_DIRECTORY/$APP_ID/releases/$BUILD_NUMBER\t"

print_title "\tChecking Directories..."
if [ ! -d $DEPLOYER_DIRECTORY ]
then
    mkdir $DEPLOYER_DIRECTORY
fi

if [ ! -d $DEPLOYER_DIRECTORY/$APP_ID ]
then
    mkdir $DEPLOYER_DIRECTORY/$APP_ID
fi

if [ ! -d $DEPLOYER_DIRECTORY/$APP_ID/releases ]
then
    mkdir $DEPLOYER_DIRECTORY/$APP_ID/releases
fi

if [ ! -d $DEPLOYER_DIRECTORY/logs ]
then
    mkdir $DEPLOYER_DIRECTORY/logs
fi
print_success "Directories checked!"