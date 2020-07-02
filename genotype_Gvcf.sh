#PBS -lvnode=biglab2
#PBS -N af
#PBS -j oe
#PBS -o af16_X.log

work_dir=/lustre/export/home/sylee/Hanchinese/try3

#reference
reference=/lustre/export/home/sylee/ucsc_hg19/ucsc.hg19.fasta
GATK_bundle=/lustre/export/home/sylee/ucsc_hg19

for i in 16 17 18 19 20 21 22 X;
do
/lustre/export/home/sylee/programfile/gatk-4.1.7.0/gatk --java-options "-Xmx4g -Xms4g" \
        GenotypeGVCFs \
        -R ${reference} \
        -V gendb:///lustre/export/home/sylee/Hanchinese/try3/result/gatk/db/chr${i}_database \
        -O /lustre/export/home/sylee/Hanchinese/try3/result/gatk/GenotypeGVCF/chr${i}.GenotypeGVCF.g.vcf \
        --tmp-dir=/lustre/export/home/sylee/tmp \
        --use-new-qual-calculator
done;

