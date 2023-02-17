function copy_environment_files() {

    if [ ! -z "$FILES_TO_COPY" ]; then
        for FILE in $FILES_TO_COPY; do
            copy_file_from_previous_release $FILE
        done
    else
        print_warning "No files to copy!"
    fi
}

function copy_file_from_previous_release() {
    FILE=$1
    if [[ -f $LATEST_BUILD_DIRECTORY/$FILE || -d $LATEST_BUILD_DIRECTORY/$FILE ]]; then
        print_success "$FILE found in previous release!"
        cp -r $LATEST_BUILD_DIRECTORY/$FILE $CURRENT_BUILD_DIRECTORY/$FILE
    else
        print_warning "$FILE not found in previous release!"
    fi
}

function stop_existing_processes () {
    pm2 stop $APP_ID -f -s || true
    pm2 delete $APP_ID -f -s || true
}


function pre_deploy () {

    print_title "\tCopying configuration files from previous release"

    copy_environment_files

    # silently check if pm2 already has active process for current app id and delete it
    print_title "\tStopping and deleting previously deployed processes!"
    DATA=$(pm2 list | grep $APP_ID)
    if [ -z "$DATA" ]; then
        print_info "No previously deployed processes for `${APP_ID}` were found!"
    else
        stop_existing_processes
        print_warning "All previously deployed processes for $APP_ID were deletetd!"
    fi
}

pre_deploy
