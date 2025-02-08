
#!/bin/bash

COMMAND="cat /etc/resolv.conf"

# Loop through each node name
for node in $(oc get nodes -o name); do
  echo "Processing node: $node"
  
  # Replace this with the command you want to execute on each node
  # Example: Get node details
  oc debug $node -q -- chroot /host bash -c "$COMMAND"
  echo "\n=====================\n"
done