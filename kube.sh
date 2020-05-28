#display nodes with partition info
kubectl get nodes -o custom-columns=NAME:.metadata.name,PARTITION:.metadata.labels.partition --sort-by=.metadata.labels.partition

#display pods with node info
kubectl get pod -n cloudbees-core -o=custom-columns=NAME:.metadata.name,STATUS:.status.phase,NODE:.spec.nodeName