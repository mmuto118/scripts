#ToDo: set third and forth octet as shell args.

!/bin/bash

check_ssh() {
        ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null $IP 'hostname'
}

for i in {49..96};do
        IP=172.26.1.$i; check_ssh
        echo "check ssh ${IP}"
done
