. /usr/local/current/singularity/app_conf/sing_binds

singularity run \
	    --bind $(pwd):/load \
	    	    --bind /lscratch:/scratch \
               	   'docker://brentp/musl-hts-nim:latest' /usr/local/bin/nsb -n jigv.nimble -s jigv.nim -- -d:danger -d:release
