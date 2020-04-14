#!/bin/bash

. /opt/rocks/share/devel/src/roll/etc/bootstrap-functions.sh

## Download needed RPMS - do once for roll repo
#cd src/RPMS
# yumdownloader --resolve --enablerepo base screen.x86_64
#
#yumdownloader --resolve --enablerepo base gsl.x86_64
#yumdownloader --resolve --enablerepo base gsl-devel.x86_64
#
#yumdownloader --resolve --enablerepo base atlas.x86_64 atlas-devel.x86_64
#yumdownloader --resolve --enablerepo base blas.x86_64 blas-devel.x86_64
#yumdownloader --resolve --enablerepo base lapack.x86_64 lapack-devel.x86_64
#
#yumdownloader --resolve --enablerepo epel libaec.x86_64  libaec-devel.x86_64
#yumdownloader --resolve --enablerepo epel hdf5.x86_64 hdf5-devel.x86_64
#yumdownloader --resolve --enablerepo epel proj.x86_64
#
# yumdownloader --resolve libxslt-1.1.28-5.el7.x86_64
# yumdownloader --resolve  python-lxml-3.2.1-4.el7.x86_64 
# yumdownloader --resolve python-javapackages-3.4.1-11.el7.noarch 
# yumdownloader --resolve javapackages-tools-3.4.1-11.el7.noarch 
# yumdownloader --resolve lksctp-tools-1.0.17-2.el7.x86_64 
# yumdownloader --resolve pcsc-lite-libs-1.8.8-8.el7.x86_64 
# yumdownloader --resolve tzdata-java-2019b-1.el7.noarch 
# yumdownloader --resolve copy-jdk-configs-3.3-10.el7_5.noarch 
# yumdownloader --resolve java-1.8.0-openjdk-headless-1.8.0.222.b10-0.el7_6.x86_64

echo "/opt/lifemapper/lib" > /etc/ld.so.conf.d/lifemapper.conf
/sbin/ldconfig

# for admin
# No opt-python for yum
module unload opt-python
yum install src/RPMS/screen-4.1.0-0.25.20120314git3c2946.el7.x86_64.rpm
module unload opt-python
yum install cmake

# for scipy
rpm -i src/RPMS/blas-3.4.2-8.el7.x86_64.rpm
rpm -i src/RPMS/blas-devel-3.4.2-8.el7.x86_64.rpm
rpm -i src/RPMS/atlas-3.10.1-12.el7.x86_64.rpm
rpm -i src/RPMS/atlas-devel-3.10.1-12.el7.x86_64.rpm
rpm -i src/RPMS/lapack-3.4.2-8.el7.x86_64.rpm
rpm -i src/RPMS/lapack-devel-3.4.2-8.el7.x86_64.rpm

# for gdal
rpm -i src/RPMS/libaec-1.0.4-1.el7.x86_64.rpm
rpm -i src/RPMS/libaec-devel-1.0.4-1.el7.x86_64.rpm
rpm -i src/RPMS/hdf5-1.8.12-10.el7.x86_64.rpm
rpm -i src/RPMS/hdf5-devel-1.8.12-10.el7.x86_64.rpm

# for openmodeller
rpm -i src/RPMS/gsl-1.15-13.el7.x86_64.rpm
rpm -i src/RPMS/gsl-devel-1.15-13.el7.x86_64.rpm

# install proj, tiff, geos for gdal
cd src/proj
make prep
cd ../..
compile proj
install lifemapper-proj
/sbin/ldconfig

cd src/tiff
make prep
cd ../..
compile tiff
install lifemapper-tiff
/sbin/ldconfig

cd src/geos
make prep
cd ../..
compile geos
install lifemapper-geos
/sbin/ldconfig

cd src/gdal
make prep
cd ../..
module load opt-python
compile gdal
module unload opt-python
install lifemapper-gdal
/sbin/ldconfig

# cython > 0.23.4 for scipy 
cd src/cython
make prep
cd ../..
module load opt-python
compile cython
module unload opt-python
install opt-lifemapper-cython

cd src/numpy
make prep
cd ../..
module load opt-python
compile numpy
module unload opt-python
install opt-lifemapper-numpy

cd src/scipy
make prep
cd ../..
module load opt-python
compile scipy
module unload opt-python
install opt-lifemapper-scipy

# Leave with opt-python loaded
module load opt-python

