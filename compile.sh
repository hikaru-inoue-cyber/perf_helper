#!/bin/sh

export SINGULARITY_BIND=/lvs0
SIFFILE=/lvs0/rccs-sdt/hikaru.inoue/cpu_neoversev2/singularity/gcc_14.1.0.sif

cat << EOF > .compile.sh
make
EOF

singularity run ${SIFFILE} sh ./.compile.sh
