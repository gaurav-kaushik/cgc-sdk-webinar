# How to use Dockerfiles - Bioconductor

# Start with a the release_base image from Bioconductor
FROM bioconductor/release_base:latest

# Update the container
RUN apt-get update --yes
RUN apt-get install vim --yes

# To add more Bioconductor packages, insert that package in "" in the list below
# More instructions for installing new Bioconductor packages can be found here: https://www.bioconductor.org/install/
RUN Rscript -e 'source("http://bioconductor.org/biocLite.R"); biocLite(c("BiocInstaller", "DESeq2", "limma", "edgeR", "RColorBrewer"))'

# Add the pheatmap package
RUN Rscript -e 'install.packages("pheatmap")'

# Copy the R script and test files
COPY diff_exp_rnaseq.R .
COPY brca* ./
# When testing the tool, modify diff_exp_rna_seq.R (see comments ~line 18)

# Set CMD to fire up the terminal when you run the container
CMD ["/bin/bash"]
