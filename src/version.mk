PKGROOT       = /opt/lifemapper
LMHOME        = /opt/lifemapper
MAPSERVER_TMP = /var/www/tmp
LMWEB         = /var/lib/lm2
LMURL			  = http://lifemapper.org/dl
DATADIR_COMPUTE   = /share/lm/data
INPUT_LAYER_DIR   = layers
INPUT_LAYER_DB    = layers.db
TEMPDIR       = /tmp
PYTHONVER     = python2.7
PGSQLVER      = 9.1
LMDISK        = /share/lm
LMTEMPDISK    = /state/partition1/lm
UNIXSOCKET    = /var/run/postgresql
SMTPSERVER    = localhost
SMTPSENDER    = no-reply-lifemapper@@PUBLIC_FQDN@
JAVABIN       = /usr/java/latest/bin/java

LMUSER              = pragma 
SCENARIO_PACKAGE_SEED    = 30sec-present-future-SEA

# Options are local or cluster
JOB_SUBMITTER_TYPE  = cluster
JOB_CAPACITY		  = 20
