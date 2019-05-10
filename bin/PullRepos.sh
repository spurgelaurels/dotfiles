PAGE=1
curl -iH "Authorization: token  4c79346a1e91de2461caea8fe5fc225a838885c1" "https://api.github.com/orgs/vidyard/repos?page=$PAGE&per_page=200" |
  grep -e 'git_url*' |
  cut -d \" -f 4 |
  sed 's/:\/\//@/g' | 
  sed 's/\/Vid/:Vid/g' |
  xargs -L1 git clone
