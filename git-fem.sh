#!/bin/bash
# Comments go at the top and bottom of code blocks
# Stop spacing them out to make it look more complex
# Tabs are 8 characters, this is not optional.
function exit_error(){
	case "$1" in
		0)
			echo 'This is how you error check'
			;;
		1)
			echo 'It'\''s a very simple process'
			;;
		2)
			echo 'Also, remember to add double quotes around non-integers'
			;;
		3)
			echo 'Remember to keep your syntax (this includes variables) consistent'
			;;
		4)
			echo 'Why not just expand data? Do you know what variable expansion is?'
			;;
		5)
			echo 'You'\''re welcome'
			;;
	esac
}
git branch -m master mistress || exit_error 0
git push origin mistress || exit_error 1
URL="$(git config remote.origin.url || exit_error 2)"
SHORTURL="${URL//https:\/\/github.com\/}"
USER="${SHORTURL%\/*}"
REPO="$(basename "${SHORTURL}" | sed 's/.git//' || exit_error 3)"
DATA="{\"name\":\"${REPO}\",\"default_branch\":\"mistress\"}"
REPO_URL="https://api.github.com/repos/${USER}/${REPO}"
curl -3 -u "${USER}" -d "${DATA}" "${REPO_URL}" || exit_error 4
git config branch.mistress.merge refs/heads/mistress || exit_error 5
