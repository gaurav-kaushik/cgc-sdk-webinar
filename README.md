#Seven Bridges Cancer Genomics Cloud -- Deploying your own tools

## Overview
####This project contains these tools and workflows:
- sonnet-grep (tool)
- dna2protein (workflow)
	- transcribe (tool)
	- translate (tool)
- GeneExpressionWF (workflow) 
	- Gene Expression Munger (tool)
	- Differential Expression (tool)

##grep
This tool looks for patterns in a text file and outputs the lines that match. *grep* is a standard Linux command line tool.

##dna2protein
This workflow takes a input text file with a DNA sequence and outputs a text file with a peptide sequence from the first ORF, if possible. *dna2protein* is a custom workflow written in Python that is composed of *transcribe.py* (DNA -> mRNA) and *translate.py* (mRNA -> protein).

##GeneExpressionWF
This workflow produces a differential expression analysis from an array of Level 3 TCGA RNASeq Gene Expression Quantification files. It first merges the files into a single matrix and produces a "metadata matrix"  from the metadata (e.g. sample type, gender) from each individual case (*GeneExpressionMunger*, *munger.py*). It then runs a custom  differential expression analysis that produces a matrix of (adj) p-values per gene based on differences among sample-types (e.g. Solid Tissue Normal and Primary Tumor) as well as some plots in PDF (*DifferentialExpression*, *diff.R*). 

#Import tools from this repo into CGC Project
You can import any CWL JSON in these projects as a tool into the Cancer Genomics Cloud. First, you must [set up a CGC account](http://docs.cancergenomicscloud.org/docs/sign-up-for-the-cgc) and [create a project](http://docs.cancergenomicscloud.org/docs/create-a-project).

Steps:
1. In a project on the CGC, click on the Apps tab, then 'Add App'.
2. Input a name for your app
![alt-tag](https://raw.githubusercontent.com/gaurav-kaushik/cgc-sdk-webinar/master/img/img_createapp.png?token=AJDJU9mF-6lRfb5w3KmZmmRQDPmjsS3Cks5XTKN3wA%3D%3D)

