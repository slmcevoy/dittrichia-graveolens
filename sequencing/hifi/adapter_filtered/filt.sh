#!/bin/bash

export PATH=$PATH:/redser4/projects/GVTP/software/HiFiAdapterFilt:/redser4/projects/GVTP/software/HiFiAdapterFilt/DB

bash pbadapterfilt.sh -p m64069_220505_192103 -t 8 -o ditt_hifiadapterfilt 1>hifiadapterfilt.o 2>hifiadapterfilt.e
