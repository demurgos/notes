# Exit on error
set -e

eval "$(ssh-agent)"
ssh-add ~/.ssh/id_rsa
ansible-playbook base.yml --ask-become-pass
