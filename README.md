LifeMapper roll
===============

Installing lmCompute
---------------------

:**Prerequisites**:

  :yum base repo: cmake, jasper, subversion, gsl, gsl-devel, sqlite-devel

  :yum rpmforge repo: txt2tags

  :build rpms: proj, tiff, openmodeller, gdal

:**downloads**: 

    ``proj`` wget http://download.osgeo.org/proj/proj-4.8.0.tar.gz

    ``tiff`` wget http://download.osgeo.org/libtiff/tiff-4.0.3.tar.gz

    ``openmodeller`` wget http://sourceforge.net/projects/openmodeller/files/openModeller/1.3.0/libopenmodeller-src-1.3.0.tar.gz/download

    ``gdal`` wget http://download.osgeo.org/gdal/gdal-1.9.2.tar.gz

:lmcompute source :
  This is a temp  distro creation till we get a versioned tarball from KU ::

  wget --no-check-certificate https://github.com/lifemapper/lmCompute/archive/master.tar.gz -O lmCompute.tar.gz
  mkdir lifemapper
  tar xzvf  lmCompute.tar.gz --strip=1  -C lifemapper/
  tar czvf lifemapper.tar.gz lifemapper
  rm -rf lifemapper lmCompute.tar.gz

