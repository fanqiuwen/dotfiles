#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Start fish shell if available, and only if bash was not executed from fish.
WHICH_FISH="$(which fish)"
if [[ -x "${WHICH_FISH}" && ! "${SHELL}" -ef "${WHICH_FISH}" ]]; then
  exec env SHELL="${WHICH_FISH}" "${WHICH_FISH}" -i
fi
