#!/bin/bash
#
#	(C) José R. Valverde, CNB/CSIC, 2016
#
if [ "$YES" == "yes" ] ; then
    for j in *.od* ; do 
    	if [ $j -nt `basename $j odp`pdf ] ; then 
            echo $j 
            libreoffice --headless --convert-to pdf --outdir . $j 
        fi
    done
fi

exit

if [ "$YES" == "yes" ] ; then
for i in 0* ; do
    echo $i 
    if [ ! -d ../PPT/$i ] ; then mkdir -p ../PPT/$i ; fi
    cd $i 
    for j in *.odp ; do 
    	if [ $j -nt ../../PPT/$i/`basename $j odp`ppt ] ; then 
            echo $i/$j 
            libreoffice --headless --convert-to ppt --outdir ../../PPT/$i $j 
        fi
    done
    cd .. 
    echo $i
done
fi

if [ "$YES" == "no" ] ; then
    chown -R www-data:www-data .
fi
