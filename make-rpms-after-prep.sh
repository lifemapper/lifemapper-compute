# Purpose: make all lifemapper-compute roll rpms
#
# This script is run by a superuser

usage () 
{
    echo "Usage: bash $0
    echo "This script is run by the superuser. It will make all rpms for the"
    echo "lifemapper-compute roll."
    echo "   "
    echo "The output of the script is in `/bin/basename $0`.log"
}

### define varibles
SetDefaults () {
    # directory
    BASEDIR=/state/partition1/workspace/lifemapper-compute

    # Logfile
    LOG=$BASEDIR/`/bin/basename $0`.log
    rm -f $LOG
    touch $LOG
}

TimeStamp () {
    echo $1 `/bin/date` >> $LOG
}

### make ready-to-bake rpms 
MakeSimpleRpms () {
    declare -a easyrpms=("cctools" "dateutil" "egenix" "futures" "gdal" "geos" 
          "matplotlib" "openmodeller" "proj" "pyparsing" "pysal" "requests" 
          "rocks-lmcompute" "rtree" "scipy" "spatialindex" "tiff" "usersguide")

    for i in "${easyrpms[@]}"
    do
        echo "  " | tee -a $LOG
        echo "*************************" | tee -a $LOG
        echo "Packaging $i..." | tee -a $LOG
        echo "*************************" | tee -a $LOG
        cd $BASEDIR/src/"$i"
        make rpm 2>&1 | tee -a $LOG
    done
}

### make rpms that need data prep
MakePreppedRpms () {
    declare -a preprpms=("lmdata-seed" "lmcompute")
 
    for i in "${preprpms[@]}"
    do
        echo "  " | tee -a $LOG
        echo "*************************" | tee -a $LOG
        echo "Packaging $i..." | tee -a $LOG
        echo "*************************" | tee -a $LOG
        cd $BASEDIR/src/"$i"
        make rpm 2>&1 | tee -a $LOG
    done
}

### Main ###
if [ $# -ne 0 ]; then
    usage
    exit 0
fi 

SetDefaults
TimeStamp "# Start"
MakeSimpleRpms
# MakePreppedRpms
TimeStamp "# End"



