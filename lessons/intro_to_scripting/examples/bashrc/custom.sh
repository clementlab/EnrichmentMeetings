#!/bin/bash

# Here add custom module loads for all CHPC Linux systems
export CHPC_HOST="notchpeak30.chpc.utah.edu"
export CHPC_USER="u0914269"
export CHPC_PASS="*********"
alias meth="mamba activate jt_methylation_project; cd '/uufs/chpc.utah.edu/common/home/u0914269/clement/projects/20230828_tcga_methylation/';"
export PATH=${PATH}:/uufs/chpc.utah.edu/common/home/u0914269/wgbs_tools

# ----------------------------------------------------------------------
if [[ "$UUFSCELL" = "kingspeak.peaks" ]] ; then
# add custom module loads after this
     :

# ----------------------------------------------------------------------
# Do Notchpeak specific initializations
elif [[ "$UUFSCELL" = "notchpeak.peaks" ]] ; then
# add custom module loads after this
     :

# ----------------------------------------------------------------------
# Do Lonepeak specific initializations
elif [[ "$UUFSCELL" = "lonepeak.peaks" ]] ; then
# add custom module loads after this
     :

# ----------------------------------------------------------------------
# Do Ash specific initializations
elif [[ "$UUFSCELL" = "ash.peaks" ]] ; then
# add custom module loads after this
     :

# ----------------------------------------------------------------------
# Do Tangent specific initializations
elif [[ "$UUFSCELL" = "tangent.peaks" ]] ; then
# add custom module loads after this
     :

# ----------------------------------------------------------------------
elif [[ "$UUFSCELL" = "redwood.bridges" ]] ; then
# add custom module loads after this
     :

# ----------------------------------------------------------------------
# Do astro.utah.edu specific initializations
elif [[ "$UUFSCELL" = "astro.utah.edu" ]] ; then
# add custom module loads after this
	:

# ----------------------------------------------------------------------
# Do cemi specific initializations
elif [[ "$UUFSCELL" = "cemi" ]] ; then
# add custom module loads after this
	:

fi

# Uncomment to set TMPDIR from default (and small) /tmp to /scratch/local
#if [ ! -d /scratch/local/$USER ] ; then
#     mkdir /scratch/local/$USER 
#fi
#export TMPDIR=/scratch/local/$USER 
