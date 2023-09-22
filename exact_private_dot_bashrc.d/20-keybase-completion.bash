#!/usr/bin/env bash

function _keybase() {
    local cur prev prevs lprev
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    prevs=("${COMP_WORDS[@]:1:COMP_CWORD-1}")
    lprev=${#prevs[@]}

    # Will try to keep args and their cases sorted alphabetically -jhazelwo
    local commands="base62 cert config ctl currency decrypt deprovision device dump-keyfamily encrypt follow help id list-followers list-following log login logout paperkey passphrase pgp ping prove rekey search sign signup sigs status track unfollow unlock untrack update verify version"

    if [[ $lprev -eq 0 ]]; then
        COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
    else
        case "${prevs[0]}" in
            base62)
                if [[ $lprev -eq 1 ]]; then
                    commands="decode encode"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            cert)
                return 0
                ;;
            config)
                if [[ $lprev -eq 1 ]]; then
                    commands="get set info help"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                else
                    case "${prevs[1]}" in
                        help)
                            if [[ $lprev -eq 2 ]]; then
                                commands="get set info"
                                COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                                return 0
                            fi
                            ;;
                    esac
                    return 0
                fi
                ;;
            ctl)
                if [[ $lprev -eq 1 ]]; then
                    commands="app-exit log-rotate reload restart start stop watchdog watchdog2"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            currency)
                if [[ $lprev -eq 1 ]]; then
                    commands="add"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            decrypt)
                return 0
                ;;
            deprovision)
                return 0
                ;;
            device)
                if [[ $lprev -eq 1 ]]; then
                    commands="remove list add"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            dump-keyfamily)
                return 0
                ;;
            encrypt)
                return 0
                ;;
            follow)
                return 0
                ;;
            help)
                if [[ $lprev -eq 1 ]]; then
                    commands="$commands advanced gpg keyring tor"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            id)
                return 0
                ;;
            list-followers)
                return 0
                ;;
            list-following)
                return 0
                ;;
            log)
                if [[ $lprev -eq 1 ]]; then
                    commands="send"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            login)
                return 0
                ;;
            logout)
                return 0
                ;;
            paperkey)
                return 0
                ;;
            passphrase)
                if [[ $lprev -eq 1 ]]; then
                    commands="change recover"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            pgp)
                if [[ $lprev -eq 1 ]]; then
                    commands="gen pull update select sign encrypt decrypt verify export import drop list purge"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            ping)
                return 0
                ;;
            prove)
                if [[ $lprev -eq 1 ]]; then
                    local services="coinbase facebook github hackernews reddit twitter web https dns http"
                    COMPREPLY+=($(compgen -W "${services}" -- ${cur}))
                    return 0
                fi
                ;;
            rekey)
                if [[ $lprev -eq 1 ]]; then
                    commands="status paper"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            search)
                return 0
                ;;
            sign)
                return 0
                ;;
            signup)
                return 0
                ;;
            sigs)
                if [[ $lprev -eq 1 ]]; then
                    commands="list revoke"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            status)
                return 0
                ;;
            track)
                return 0
                ;;
            unfollow)
                return 0
                ;;
            unlock)
                return 0
                ;;
            untrack)
                return 0
                ;;
            update)
                if [[ $lprev -eq 1 ]]; then
                    commands="check run check-in-use notify"
                    COMPREPLY+=($(compgen -W "${commands}" -- ${cur}))
                    return 0
                fi
                ;;
            verify)
                return 0
                ;;
            version)
                return 0
                ;;
        esac
    fi
}
complete -F _keybase keybase

# vim: syntax=sh sts=4 ts=4 sw=4 sr et
