function lazygit () {
    if [[ ! $1 ]]
    then
        echo "Please use a commit message"
        return
    fi
    if [[ ! $2 ]]
    then
        echo "Do not forget to set target branch"
        return
    fi
    git add -A
    git commit -m '$1'
    git push origin $2
}
