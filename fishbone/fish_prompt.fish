

function fish_prompt -d "Fishbone custom prompt"
    show_main_prompt
    # Keep the command executed status
    set --local last_status $status
    show_path
    show_status $last_status
end

function show_main_prompt -d "Print customizable prompt"
    set --local line_color "00A36C"
    set_color $line_color
    echo -en "|"
    show_user
    show_at
    show_host
    set_color $line_color
    echo -en "|"
end

function show_user -d "Prints current user"
    set_color green
    echo -en $USER
end

function show_host -d "Print the name of the current host"
    set --local host_color "BF40BF"
    set_color $host_color
    echo -en $HOSTNAME
end

function show_at -d "Print @"
    set --local at_color "F88379"
    set_color $at_color
    echo -en "@"
end

function show_path -d "Prints current directory abbreviated"

    set_color blue
    echo -en "["

    set_color yellow
    echo -en (prompt_pwd)

    set_color blue
    echo -en "] "
end


function show_status -a last_status -d "Prints red/grey colon based on status"

    set --local current_color "FFF"

    if [ $last_status -ne 0 ]
        set current_color red
    end

    set_color $current_color
    echo -en "--> "
    set_color normal
end
