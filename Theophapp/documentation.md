---
title: "Pharmacokinetics of Theophylline Documentation"
author: "José Pereira"
date: "23 de Outubro de 2015"
output: html_document
---

This shiny application was built as part of the Developing Data Products course in the Data Science Specialization from John Hopkins University on Coursera.

It is a very simple application based on the Theoph dataset from the package "datasets"" in standard R. According to the help file: "The Theoph data frame has 132 rows and 5 columns of data from an experiment on the pharmacokinetics of theophylline: Boeckmann, Sheiner and Beal (1994) report data from a study by Dr. Robert Upton of the kinetics of the anti-asthmatic drug theophylline. Twelve subjects were given oral doses of theophylline then serum concentrations were measured at 11 time points over the next 25 hours."

Using the dropdown, the user just has to choose one of the twelve subjects from the experiment. The application will automatically present the number of the subject chosen, the dose of theophylline that was administrated to him and will then plot using geom_line (time vs concentration) its pharmacokinetics plot showing the absorption of the drug, its peak concentration and the time for its elimination from the organism.

Hope you enjoy this pharmacological simulation!
