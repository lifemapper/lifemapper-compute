#!/bin/bash

. /opt/rocks/share/devel/src/roll/etc/bootstrap-functions.sh

# # download needed RPMS
# 
# # Do once for roll repo
# cd src/RPMS; 
#  yumdownloader --resolve --enablerepo=base screen.x86_64
#  yumdownloader --resolve --enablerepo=base readline-devel.x86_64
# 
# # Add gdal, gdal-devel, gdal-python and deps from epel repo
#  yumdownloader --resolve --enablerepo=epel gdal.x86_64
#  yumdownloader --resolve --enablerepo=epel gdal-devel.x86_64
#  yumdownloader --resolve --enablerepo=epel gdal-python.x86_64
# 
# # Add header files for dependencies proj, geos, tiff, hdf5
#  yumdownloader --resolve --enablerepo=epel hdf5-devel.x86_64
#  yumdownloader --resolve --enablerepo=epel proj49-devel.x86_64
#  yumdownloader --resolve --enablerepo=epel proj49-epsg.x86_64
#  yumdownloader --resolve --enablerepo=epel proj49-nad.x86_64
#  yumdownloader --resolve --enablerepo=epel geos-devel
#  yumdownloader --resolve --enablerepo=epel geos-python
#  yumdownloader --resolve --enablerepo=epel libtiff
#  yumdownloader --resolve --enablerepo=epel libgeotiff-devel
# 
#  yumdownloader --resolve --enablerepo=base python2-futures.noarch

echo "/opt/lifemapper/lib" > /etc/ld.so.conf.d/lifemapper.conf
/sbin/ldconfig

module load opt-python

# Utilities
rpm -i src/RPMS/screen*rpm
rpm -i src/RPMS/readline-devel*rpm
# GDAL and resolved dependencies
rpm -i src/RPMS/CharLS-1.0-5.el7.x86_64.rpm
rpm -i src/RPMS/SuperLU-5.2.0-5.el7.x86_64.rpm
rpm -i src/RPMS/armadillo-8.300.0-1.el7.x86_64.rpm
rpm -i src/RPMS/arpack-3.1.3-2.el7.x86_64.rpm
rpm -i src/RPMS/blas-3.4.2-8.el7.x86_64.rpm
rpm -i src/RPMS/atlas-3.10.1-12.el7.x86_64.rpm
rpm -i src/RPMS/cfitsio-3.370-10.el7.x86_64.rpm
rpm -i src/RPMS/freexl-1.0.5-1.el7.x86_64.rpm
rpm -i src/RPMS/gpsbabel-1.5.0-2.el7.x86_64.rpm
rpm -i src/RPMS/lapack-3.4.2-8.el7.x86_64.rpm
# Add devel, which brings libaec-devl
rpm -i src/RPMS/hdf5*-1.8.12-10.el7.x86_64.rpm     
rpm -i src/RPMS/libaec*-1.0.4-1.el7.x86_64.rpm
rpm -i src/RPMS/libdap-3.13.1-2.el7.x86_64.rpm
rpm -i src/RPMS/libusb-0.1.4-3.el7.x86_64.rpm
rpm -i src/RPMS/libgta-1.0.4-1.el7.x86_64.rpm
# Add devel, python  
rpm -i src/RPMS/geos*-3.5.0-1.rhel7.1.x86_64.rpm
rpm -i src/RPMS/ogdi-3.2.0-4.rhel7.1.x86_64.rpm
rpm -i src/RPMS/netcdf-4.3.3.1-5.el7.x86_64.rpm
rpm -i src/RPMS/gdal-libs-1.11.4-12.rhel7.x86_64.rpm    
rpm -i src/RPMS/openblas-openmp-0.3.3-2.el7.x86_64.rpm     
rpm -i src/RPMS/postgresql-libs-9.2.23-3.el7_4.x86_64.rpm
rpm -i src/RPMS/openjpeg2-2.3.1-1.el7.x86_64.rpm
rpm -i src/RPMS/unixODBC-2.3.1-11.el7.x86_64.rpm
rpm -i src/RPMS/xerces-c-3.1.1-8.el7_2.x86_64.rpm
rpm -i src/RPMS/shapelib-1.3.0-2.el7.x86_64.rpm
# Add devel, nad, epsg
rpm -i src/RPMS/proj49*-4.9.3-3.rhel7.1.x86_64.rpm
rpm -i src/RPMS/gdal-1.11.4-12.rhel7.x86_64.rpm     
# Add devel  
rpm -i src/RPMS/libgeotiff*-1.4.0-1.rhel7.1.x86_64.rpm
# Add libtiff for libgeotiff, brings 
rpm -i src/RPMS/glibc-2.17-196.el7_4.2.i686.rpm     
rpm -i src/RPMS/jbigkit-libs-2.0-11.el7.i686.rpm     
rpm -i src/RPMS/libgcc-4.8.5-16.el7_4.1.i686.rpm     
rpm -i src/RPMS/libjpeg-turbo-1.2.90-5.el7.i686.rpm     
rpm -i src/RPMS/libstdc++-4.8.5-16.el7_4.1.i686.rpm
# Note: brings i686 and x86_64   
rpm -i src/RPMS/libtiff-4.0.3-27.el7_3.x86_64.rpm     
rpm -i src/RPMS/libtiff-4.0.3-27.el7_3.i686.rpm     
rpm -i src/RPMS/nss-softokn-freebl-3.28.3-8.el7_4.i686.rpm     
rpm -i src/RPMS/zlib-1.2.7-17.el7.i686.rpm
# Add gdal-python and resolved dependencies
rpm -i src/RPMS/python-nose-1.3.7-1.el7.noarch.rpm     
rpm -i src/RPMS/numpy-1.7.1-11.el7.x86_64.rpm     
rpm -i src/RPMS/gdal-python-1.11.4-12.rhel7.x86_64.rpm
# futures backport for mcpa calcs with python2
rpm -i src/RPMS/python2-futures*rpm

module unload opt-python


echo "You will need to download source code, data and dependencies."
echo "    lmcompute"
echo "    lmdata-env"
echo "    cctools"
echo "    dendropy"
echo "Go to each of the packages and execute:"
echo "    make prep "