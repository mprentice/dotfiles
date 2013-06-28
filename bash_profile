if [ -f ~/.bashrc ] ; then
    source ~/.bashrc
fi

# Emacs ansi-term directory tracking
# track directory, username, and cwd for remote logons
# From
# http://www.enigmacurry.com/2008/12/26/emacs-ansi-term-tricks/
if [ $TERM = eterm-color ] ; then
    function eterm-set-cwd {
        $@
        echo -e "\033AnSiTc" $(pwd)
    }
    
    # set hostname, user, and cwd
    function eterm-reset {
        echo -e "\033AnSiTu" $(whoami)
        echo -e "\033AnSiTc" $(pwd)
        echo -e "\033AnSiTh" $(hostname)
    }
    
    for temp in cd pushd popd; do
        alias $temp="eterm-set-cwd $temp"
    done
    
    # set hostname, user, and cwd now
    eterm-reset
fi
