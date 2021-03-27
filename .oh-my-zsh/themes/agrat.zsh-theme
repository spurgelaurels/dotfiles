# agrat theme, based on af-magic
# created by spurgelaurels


# settings
typeset +H return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
typeset +H my_gray="$FG[237]"
typeset +H my_pink="$FG[164]"
typeset +H my_orange="$FG[202]"

# separator dashes size
function afmagic_dashes {
	local PYTHON_ENV="$VIRTUAL_ENV"
	[[ -z "$PYTHON_ENV" ]] && PYTHON_ENV="$CONDA_DEFAULT_ENV"

	if [[ -n "$PYTHON_ENV" && "$PS1" = \(* ]]; then
		echo $(( COLUMNS - ${#PYTHON_ENV} - 3 ))
	else
		echo $COLUMNS
	fi
}

# primary prompt
if [[ $(hostname -s) = $WHEREAMI ]]; then 

  PS1='$FG[104]${(l.$(afmagic_dashes)..-.)}%{$reset_color%}
$FG[032]%~$(git_prompt_info)$(hg_prompt_info) $FG[105]%(!.#.»)%{$reset_color%} '
  PS2='%{$fg[red]%}\ %{$reset_color%}'
  RPS1='${return_code}'

  # right prompt
  (( $+functions[virtualenv_prompt_info] )) && RPS1+='$(virtualenv_prompt_info)'
  RPS1+=' $my_pink%n@%M%{$reset_color%}%'
else
  
  PS1='$FG[104]${(l.$(afmagic_dashes)..-.)}%{$reset_color%}
$FG[032]%~$(git_prompt_info)$(hg_prompt_info) $FG[208]%(!.#.»)%{$reset_color%} '
  PS2='%{$fg[red]%}\ %{$reset_color%}'
  RPS1='${return_code}'

  # right prompt
  (( $+functions[virtualenv_prompt_info] )) && RPS1+='$(virtualenv_prompt_info)'
  RPS1+=' $my_pink%n@%M%{$reset_color%}%'
fi




# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075]($FG[063]"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# hg settings
ZSH_THEME_HG_PROMPT_PREFIX="$FG[075]($FG[078]"
ZSH_THEME_HG_PROMPT_CLEAN=""
ZSH_THEME_HG_PROMPT_DIRTY="$my_orange*%{$reset_color%}"
ZSH_THEME_HG_PROMPT_SUFFIX="$FG[075])%{$reset_color%}"

# virtualenv settings
ZSH_THEME_VIRTUALENV_PREFIX=" $FG[075]["
ZSH_THEME_VIRTUALENV_SUFFIX="]%{$reset_color%}"
