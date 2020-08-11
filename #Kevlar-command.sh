#Kevlar-command log

qsub -lvnode=biglab5 -j oe -o Kevlar_novel.log -- /share/apps/programs/python/3.6.4/bin/kevlar novel -M 40 -t 30 --out /lustre/export/home/sylee/Hanchinese/try6/kevlar/novel_reads.augfastq.gz \
    --control-counts /lustre/export/home/sylee/father.counttable /lustre/export/home/selee/kevlar/count.mother.ct \
    --case-counts /lustre/export/home/sylee/proband.counttable --case /lustre/EXTDATA/mhchoi/Denovo_mutation_project/1000G_trio/0.Han_Chinese_trio/IGSR.chinese.daughter.trim.Q20_l20.R1.fastq /lustre/EXTDATA/mhchoi/Denovo_mutation_project/1000G_trio/0.Han_Chinese_trio/IGSR.chinese.daughter.trim.Q20_l20.R2.fastq 


./novoCaller \
-I /lustre/export/home/selee/genotypegvcfs/whole.genotypegvcfs.vcf \
-O /lustre/export/home/sylee/Hanchinese/try7/ \
-T /lustre/export/home/sylee/Hanchinese/try7/family.txt \
-X 1 -P 0.005 -E 0.008 