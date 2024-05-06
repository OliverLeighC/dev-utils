
alias co="git checkout"

alias k="kubectl"
alias keygen="ssh-keygen -t ed25519 -C"
alias python=python3
alias pip=pip3

alias ..="cd .."
alias grep='grep --color=auto'

function kdebug() { 
  kubectl run -i --rm --tty debug --image=busybox --restart=Never -- sh 
}

function kevents() {
  kubectl get events --sort-by='.metadata.creationTimestamp' -n $1
}

function klogs() {
  kubectl logs -n $1 -l app=$2
}

function ksw() {
  aws eks --region us-east-1 update-kubeconfig --name $1 --profile ${2:-$1}
}