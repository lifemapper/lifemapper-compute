LifeMapper roll
===============

Installing lmCompute
---------------------

**Prerequisites**  
  * *yum base repo:* cmake, jasper, subversion, gsl, gsl-devel, sqlite-devel
  * *yum rpmforge repo:* txt2tags
  * *build rpms from source:* proj, tiff, openmodeller, gdal

  source downloads:  
    wget http://download.osgeo.org/proj/proj-4.8.0.tar.gz  
    wget http://download.osgeo.org/libtiff/tiff-4.0.3.tar.gz  
    wget http://sourceforge.net/projects/openmodeller/files/openModeller/1.3.0/libopenmodeller-src-1.3.0.tar.gz/download  
    wget http://download.osgeo.org/gdal/gdal-1.9.2.tar.gz  

**lmcompute source**  
This is a temp  distro creation till we get a versioned tarball from KU:  

    wget --no-check-certificate https://github.com/lifemapper/lmCompute/archive/master.tar.gz -O lmCompute.tar.gz  
    mkdir lifemapper  
    tar xzvf  lmCompute.tar.gz --strip=1  -C lifemapper/  
    tar czvf lifemapper.tar.gz lifemapper  
    rm -rf lifemapper lmCompute.tar.gz  

Installing LMserver
-------------------

**Prerequisites**  
  * *install repos from RPM:* elgis, pgdg91
  * *yum base repo:* cmake, subversion, sqlite-devel, giflib-devel, byacc, readline-devel 
  * *yum rpmforge repo:* hdf4, hdf4-devel, hdf5, hdf5-devel
  * *yum epel repo:* fribidi, json-c
  * *yum elgis repo:* mapserver 
  * *yum pgdg91 repo:* postgresql91, postgresql91-devel, postgis2_91, pgbouncer
  * *build from source:* libspatialindex, geos, ant, mod_python, gdal
  * *build python modules from source:* numexpr, Cheetah, CherryPy, Cython, pytables, egenix-mxDateTime, setuptools, rtree, pylucene, psycopg2, MySQL-python, faulthandler
    
  **repos download:**  
    wget http://yum.postgresql.org/9.1/redhat/rhel-6-x86_64/pgdg-centos91-9.1-4.noarch.rpm  
    wget http://elgis.argeo.org/repos/6/elgis-release-6-6_0.noarch.rpm  

  **source download:**  
    wget http://download.osgeo.org/geos/geos-3.4.2.tar.bz2  
    wget http://www.cython.org/release/Cython-0.20.tar.gz  
    wget http://sourceforge.net/projects/pytables/files/pytables/3.1.0/tables-3.1.0rc2.tar.gz  
    wget http://download.osgeo.org/libspatialindex/spatialindex-src-1.8.1.tar.gz  
    wget http://www.poolsaboveground.com/apache/lucene/pylucene/pylucene-4.5.1-1-src.tar.gz  
    wget http://download.cherrypy.org/cherrypy/3.1.2/CherryPy-3.1.2.tar.gz  
    wget http://mirror.metrocast.net/apache//ant/source/apache-ant-1.9.3-src.tar.gz  
    wget http://dist.modpython.org/dist/mod_python-3.5.0.tgz  
    wget --no-check-certificate https://pypi.python.org/packages/source/n/numexpr/numexpr-2.3.tar.gz  
    wget --no-check-certificate https://downloads.egenix.com/python/egenix-mx-base-3.2.7.tar.gz  
    wget --no-check-certificate http://pypi.python.org/packages/source/s/setuptools/setuptools-2.1.tar.gz  
    wget --no-check-certificate  https://pypi.python.org/packages/source/R/Rtree/Rtree-0.7.0.tar.gz  
    wget --no-check-certificate  https://pypi.python.org/packages/source/p/psycopg2/psycopg2-2.5.2.tar.gz  
    wget --no-check-certificate https://pypi.python.org/packages/source/M/MySQL-python/MySQL-python-1.2.5.zip  
    wget --no-check-ertificate https://pypi.python.org/packages/source/C/Cheetah/Cheetah-2.4.4.tar.gz  
    wget --no-check-certificate https://pypi.python.org/packages/source/f/faulthandler/faulthandler-2.3.tar.gz  
    wget --no-check-certificate https://pypi.python.org/packages/source/R/Rtree/Rtree-0.7.0.tar.gz

  **RPMs download:**  
    wget ftp://ftp.pbone.net/mirror/atrpms.net/el6-x86_64/atrpms/stable/bitstream-vera-sans-fonts-1.10-18.el6.noarch.rpm  
    wget ftp://ftp.pbone.net/mirror/atrpms.net/el6-i386/atrpms/stable/bitstream-vera-fonts-common-1.10-18.el6.noarch.rpm  

