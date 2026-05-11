# Kubernetes Aliases
alias k="kubectl"
alias kci="kubectl cluster-info"
alias kgctx="kubectl config get-contexts"
alias kctx="kubectl config current-context"
alias kuc="kubectl config use-context"

alias kgns="kubectl get ns"
alias kcns="kubectl create ns"
alias kdns="kubectl delete ns"
alias ksn="kubectl config set-context --current --namespace"

alias kgn="kubectl get nodes"
alias kgnw="kubectl get nodes -o wide"
alias kdn="kubectl describe node"
alias ktn="kubectl top node"
alias kcor="kubectl cordon"
alias kuncor="kubectl uncordon"
alias kdrain="kubectl drain"

alias kgp="kubectl get po"
alias kgpa="kubectl get po -A"
alias kgpw="kubectl get po -o wide"
alias kdp="kubectl describe po"
alias ktp="kubectl top po"
alias krun="kubectl run"
alias kdelp="kubectl delete po"
alias kdelpall="kubectl delete po --all"
alias kgpl="kubectl get po --show-labels"

alias kgd="kubectl get deploy"
alias kdd="kubectl describe deploy"
alias kcd="kubectl create deploy"
alias krsd="kubectl rollout status deploy"
alias krhd="kubectl rollout history deploy"
alias krud="kubectl rollout undo deploy"
alias ksd="kubectl scale deploy"
alias kgrs="kubectl get rs"

alias kgsts="kubectl get sts"
alias kgds="kubectl get ds"
alias kdsts="kubectl describe sts"

alias kgs="kubectl get svc"
alias kds="kubectl describe svc"
alias kexd="kubectl expose deploy"
alias kging="kubectl get ing"
alias kgnetpol="kubectl get netpol"

alias kgcm="kubectl get cm"
alias kdcm="kubectl describe cm"
alias kccm="kubectl create cm"
alias kgsec="kubectl get secret"
alias kdsec="kubectl describe secret"

alias kgpv="kubectl get pv"
alias kgpvc="kubectl get pvc"
alias kgsc="kubectl get sc"

alias kgjob="kubectl get jobs"
alias kgcj="kubectl get cj"
alias kcjob="kubectl create job"

alias kl="kubectl logs"
alias klf="kubectl logs -f"
alias klp="kubectl logs --previous"
alias kex="kubectl exec -it"
alias kpf="kubectl port-forward"
alias kge="kubectl get events --sort-by=.metadata.creationTimestamp"
alias kauth="kubectl auth can-i"

alias kgy="kubectl get -o yaml"
alias kgjson="kubectl get -o json"
alias kdry="kubectl get --dry-run=client -o yaml"

echo ""
set_color -o blue; echo "🐳 Comprehensive Kubernetes Commands Cheat Sheet & Aliases:"; set_color normal

set_color -o green; echo "=== Cluster & Contexts ==="; set_color normal
echo "  kci      | kubectl cluster-info                # Display cluster info"
echo "  kgctx    | kubectl config get-contexts         # List available contexts"
echo "  kctx     | kubectl config current-context      # Display current context"
echo "  kuc      | kubectl config use-context <ctx>    # Set the default context"
echo ""

set_color -o green; echo "=== Namespaces ==="; set_color normal
echo "  kgns     | kubectl get ns                      # List all namespaces"
echo "  kcns     | kubectl create ns <name>            # Create a new namespace"
echo "  kdns     | kubectl delete ns <name>            # Delete a namespace"
echo "  ksn      | kubectl config set-context --current --namespace=<name>  # Set default namespace for context"
echo ""

set_color -o green; echo "=== Nodes ==="; set_color normal
echo "  kgn      | kubectl get nodes                   # List all nodes"
echo "  kgnw     | kubectl get nodes -o wide           # List nodes with more details (IPs, OS)"
echo "  kdn      | kubectl describe node <name>        # Detailed info about a specific node"
echo "  ktn      | kubectl top node                    # Show metrics (CPU/Memory) for all nodes"
echo "  kcor     | kubectl cordon <node>               # Mark node as unschedulable"
echo "  kuncor   | kubectl uncordon <node>             # Mark node as schedulable"
echo "  kdrain   | kubectl drain <node>                # Drain node in preparation for maintenance"
echo ""

set_color -o green; echo "=== Pods ==="; set_color normal
echo "  kgp      | kubectl get po                      # List pods in current namespace"
echo "  kgpa     | kubectl get po -A                   # List all pods in all namespaces"
echo "  kgpw     | kubectl get po -o wide              # List pods with IPs and node info"
echo "  kdp      | kubectl describe po <name>          # Detailed info about a pod"
echo "  ktp      | kubectl top po                      # Show metrics (CPU/Memory) for all pods"
echo "  krun     | kubectl run <name> --image=<img>    # Run a pod from an image"
echo "  kdelp    | kubectl delete po <name>            # Delete a specific pod"
echo "  kdelpall | kubectl delete po --all             # Delete all pods in current namespace"
echo "  kgpl     | kubectl get po --show-labels        # List pods with their labels"
echo ""

set_color -o green; echo "=== Deployments & ReplicaSets ==="; set_color normal
echo "  kgd      | kubectl get deploy                  # List deployments"
echo "  kdd      | kubectl describe deploy <name>      # Describe a deployment"
echo "  kcd      | kubectl create deploy <n> --image=<i> # Create a deployment"
echo "  krsd     | kubectl rollout status deploy <n>   # Check rollout status"
echo "  krhd     | kubectl rollout history deploy <n>  # Check rollout history"
echo "  krud     | kubectl rollout undo deploy <n>     # Rollback to previous revision"
echo "  ksd      | kubectl scale deploy <n> --replicas=3 # Scale a deployment"
echo "  kgrs     | kubectl get rs                      # List ReplicaSets"
echo ""

set_color -o green; echo "=== StatefulSets & DaemonSets ==="; set_color normal
echo "  kgsts    | kubectl get sts                     # List StatefulSets"
echo "  kgds     | kubectl get ds                      # List DaemonSets"
echo "  kdsts    | kubectl describe sts <name>         # Describe a StatefulSet"
echo ""

set_color -o green; echo "=== Services & Networking ==="; set_color normal
echo "  kgs      | kubectl get svc                     # List services"
echo "  kds      | kubectl describe svc <name>         # Describe a service"
echo "  kexd     | kubectl expose deploy <n> --port=80 # Create a service for a deployment"
echo "  kging    | kubectl get ing                     # List Ingress resources"
echo "  kgnetpol | kubectl get netpol                  # List NetworkPolicies"
echo ""

set_color -o green; echo "=== ConfigMaps & Secrets ==="; set_color normal
echo "  kgcm     | kubectl get cm                      # List ConfigMaps"
echo "  kdcm     | kubectl describe cm <name>          # Describe a ConfigMap"
echo "  kccm     | kubectl create cm <n> --from-literal=k=v # Create ConfigMap"
echo "  kgsec    | kubectl get secret                  # List Secrets"
echo "  kdsec    | kubectl describe secret <name>      # Describe a Secret"
echo ""

set_color -o green; echo "=== Storage (PV & PVC) ==="; set_color normal
echo "  kgpv     | kubectl get pv                      # List PersistentVolumes"
echo "  kgpvc    | kubectl get pvc                     # List PersistentVolumeClaims"
echo "  kgsc     | kubectl get sc                      # List StorageClasses"
echo ""

set_color -o green; echo "=== Jobs & CronJobs ==="; set_color normal
echo "  kgjob    | kubectl get jobs                    # List Jobs"
echo "  kgcj     | kubectl get cj                      # List CronJobs"
echo "  kcjob    | kubectl create job <n> --image=<i>  # Create a Job"
echo ""

set_color -o green; echo "=== Troubleshooting & Debugging ==="; set_color normal
echo "  kl       | kubectl logs <pod>                  # View logs of a pod"
echo "  klf      | kubectl logs -f <pod>               # Stream logs of a pod"
echo "  kl -c    | kubectl logs <pod> -c <container>   # View logs of a specific container in a pod"
echo "  klp      | kubectl logs --previous <pod>       # View logs of a previously crashed pod"
echo "  kex      | kubectl exec -it <pod> -- sh        # Execute interactive shell in a pod"
echo "  kpf      | kubectl port-forward <pod> 8080:80  # Port-forward local 8080 to pod 80"
echo "  kge      | kubectl get events --sort-by=.metadata.creationTimestamp # List events sorted by time"
echo "  kauth    | kubectl auth can-i create po        # Check if you have permission to create pods"
echo ""

set_color -o green; echo "=== Output Formatting ==="; set_color normal
echo "  kgy      | kubectl get <res> -o yaml           # Output resource as YAML"
echo "  kgjson   | kubectl get <res> -o json           # Output resource as JSON"
echo "  kdry     | kubectl get <res> --dry-run=client -o yaml # Generate YAML without applying"
echo ""
