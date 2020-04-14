# Open github PR if commit title using this format "Message (#123)" or "Merge pull request #36"
# otherwise Open github commit

ghop () {
  local github commit remote_url remote commit_title pr_number github_url
  github="https://github.com/"

  commit="$1"
  if [ -z "$commit" ]; then
    commit="HEAD"
  fi

  remote_url="$(git config --get 'remote.origin.url')"
  remote="$(echo ${remote_url#$github} | cut -d: -f2 | cut -d. -f1)"
  commit_title="$(git show --pretty=format:%s -s $commit)"
  pr_number="$(echo $commit_title | grep -Eo '#[0-9]+' | grep -Eo '[0-9]+' | tail -1)"

  if [ -n "$pr_number" ]; then
    github_url="$github$remote/pull/$pr_number"
  else
    github_url="$github$remote/commit/$commit"
  fi

  if [ -n "$remote" ]; then
    echo $commit_title
    echo "Opening.. $github_url"
    open "$github_url"
  fi
}
