#!/usr/bin/env bash
#
# Dot File Install Helper Script
#
#


# !! THIS SCIPRT IS IN PROGRESS !!

checkDotfileDirectories () {
   
    echo 'Home  Directory:';
    echo "    $HOME";

    echo 'Dotfiles directory:';
    echo "    $(cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )";

}


checkDotfileDirectories






