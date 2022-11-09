# Kmer analysis

* KMC v3.1.1 with HiFi reads were used to create the histograms of kmer frequencies.  I useded kmers 21 with max coverage 500000.  There are two gits for KMC, and I used the following as recommended, to get the smudge_pairs command: https://github.com/tbenavi1/KMC

* The visualization was plotted in Genomescope 2.0. (left column, below).

* Smudgeplot v0.2.2 was used to estimate ploidy which was diploid (middle and right columns, below).  When running Smudgeplot, lower and upper boundaries of the kmer frequency peaks must be selected.  I let the script autodetect the upper boundary as this is not a critical value.  The lower boundary proposed by the autodetect script did not capture all of the initial peaks as observed in the GenomeScope plots, so I used Genomescope's kcov value as L in each case. This was based on guidance from the Smudgeplot git wiki and issue queue.

A list of links to all the Genomscope results is in the [google sheet](https://docs.google.com/spreadsheets/d/10WpqEDbLMlsCtp8gftFsXScPKQhTrrIB8Kh8VTkQy2g/edit#gid=0)
### K21
<img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/genome-size/dittrichia-genomescope.png" height="325"> <img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/genome-size/smudgeplot_smudgeplot.png" height="325"> <img src="https://github.com/slmcevoy/dittrichia-graveolens/blob/main/genome-size/smudgeplot_smudgeplot_log10.png" height="325">
http://genomescope.org/genomescope2.0/analysis.php?code=mDkWJUOlMNG2SAKLhx6U
