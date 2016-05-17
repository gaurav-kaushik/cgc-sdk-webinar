#Cancer Genomics Cloud Webinar -- Deploying your own tools

####This project contains these tools and workflows:
- grep (tool)
- dna2protein (workflow)
	- transcribe (tool)
	- translate (tool)
- GeneExpressionWF (workflow) 
	- Gene Expression Munger (tool)
	- Differential Expression (tool)

##sonnet-grep
This tool looks for patterns in a text file and outputs the lines that match. *grep* is a standard Linux command line tool.

##dna2protein
This workflow takes a text file with a DNA sequence and outputs a text file with a peptide sequence, if possible. *dna2protein* is a custom workflow written in Python that is composed of *transcribe.py* (dna2rna) and *translate.py* (rna2protein).

##GeneExpressionWF
This workflow 1) merges any number of Level 3 TCGA RNASeq Gene Expression Quantification files into a single matrix and also produces a "metadata matrix" with information about individual cases (*GeneExpressionMunger*) using Python and 2) runs a custom differential expression analysis that produces a matrix of (adj) p-values per gene based on differences among sample-types (e.g. Solid Tissue Normal and Primary Tumor) as well as some plots in PDF (*DifferentialExpression)*. 
