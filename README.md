# Organization-Classification-for-Food-Systems
Code for the paper [Classifying Organizations for Food System Ontologies using Natural Language Processing](https://users.cs.utah.edu/~riloff/pdfs/official-IFOW2023-paper.pdf) ([IFOW 2023](https://foodon.org/ifow-2023-workshop/)).

## Running Environment
This project is built on python==3.8.5, torch=1.5.1, transformers==2.9.0.

## How to Run
First untar the compressed data file under
```
sic_code_classification/data/sic_code/
```
by
```
ls *.tar.gz | xargs -i tar -xzvf {}
```
Then under either environmental_issues_classification/ or sic_code_classification/ folder, run
```
bash train.sh
```

## Contact and Reference
For questions and issues, please contact `riloff@cs.utah.edu` or `tianyu.jiang@uc.edu`. Our paper can be cited as:
```
@inproceedings{jiang-et-al-2023-organization,
title="{Classifying Organizations for Food System Ontologies using Natural Language Processing}",
author={Jiang, Tianyu and Vinogradova, Sonia and Stringham, Nathan and Earl, E. Louise and Hollander, Allan D. and Huber, Patrick R. and 
Riloff, Ellen and Schillo, R. Sandra and Ubbiali, Giorgio A. and Lange, Matthew},
maintitle = {Formal Ontology in Information Systems Conference (FOIS 2023)},
booktitle={The fourth annual Integrated Food Ontology Workshop (IFOW 2023)},
year={2023}
}
```

## Acknowledgments
This research was supported in part by the ICICLE project through NSF award OAC 2112606 and the Canadian Institutes of Health Research FRN 177412.

