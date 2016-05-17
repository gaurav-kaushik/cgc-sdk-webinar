#Cancer Genomics Cloud Webinar #3 -- Deploying your own tools

####This project contains these tools and workflows:
- grep (tool)
- dna2protein (workflow)
	- transcribe (tool)
	- translate (tool)
- GeneExpressionWF (workflow) 
	- Gene Expression Munger (tool)
	- Differential Expression (tool)

##grep
This tool looks for patterns in a text file and outputs the lines that match. *grep* is a standard Linux command line tool.

####This tool demonstrates:
- The basics of wrapping a tool using CWL
- Using a public Docker container
- Simple JavaScript expressions
- Extending a tool to enable persistence

##dna2protein
This workflow takes a text file with a DNA sequence and outputs a text file with a peptide sequence, if possible. *dna2protein* is a custom workflow written in Python that is composed of *transcribe.py* (dna2rna) and *translate.py* (rna2protein).

####This workflow demonstrates:
- The basics of wrapping a Python script using CWL
- Using a public Docker container
- Intermediate JavaScript expressions
- Boolean inputs
- Extending a tool to enable persistence
- Chaining tools into a workflow

##GeneExpressionWF
This workflow 1) merges any number of Level 3 TCGA RNASeq Gene Expression Quantification files into a single matrix and also produces a "metadata matrix" with information about individual cases (*GeneExpressionMunger*) using Python and 2) runs a custom differential expression analysis that produces a matrix of (adj) p-values per gene based on differences among sample-types (e.g. Solid Tissue Normal and Primary Tumor) as well as some plots in PDF (*DifferentialExpression)*. 

####This workflow demonstrates:
- The basics of wrapping Python and R scripts using CWL
- Using custom Docker containers with required libraries installed
- Advanced JavaScript expressions
- An advanced use case for incorporating metadata into an analysis on the CGC
- Creating custom files (index of all input files) before the command line execution
