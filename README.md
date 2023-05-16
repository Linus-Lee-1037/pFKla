# iFKla
inference of Functional lysine lactylation sites 

We developed a new hybrid-learning model for functional laysin lactylation sites prediction. We defined a lactylation site peptide LSP(m, n) as a lactylation residue flanked by upstream m residues and downstream n residues, and LSP(10, 10) was chosen in this study for rapid training. We first encoded an LSP(10, 10) peptide into 11 kinds of 1D feature vectors, then for each feature we had a particular DNN model to predict and get score so that we had 11 scores for one Kla site. Finally we use another DNN model named integrated DNN to summarize those 11 scores to give a final score in order to predict a Kla site is functional or not. 

## Requirements

The main requirements are listed below:

* Python 3.8
* Numpy
* Scikit-Learn
* matplotlib
* Keras
* Pandas


## The description of IBR-CNNs source

* after_cd_hit.py

    The code is used for turning .fasta format sequences afer being deredundant by CD-HIT into LSP(10,10) peptides.

* encoding_10features.py

    The code is used for encoding an LSP(10,10) peptide into 10 kinds of 1D feature vectors (PseAAC, CKSAAPs, OBC, AAindex, ACFs, GPS, PSSM, ASA, SS and BTAs) for DNN training.

* transformer.py

    The code is used for traning the transformer model being used to generate the 11th feature vector which is also named transformer. 

* transformer_feature.py

    The code is used for encoding a LSP(10, 10) peptide into an 128D feature vector which is also named transformer. 

* DNN.py

    The code is 11 fully connected neural networks frameworks of 11 types of feature for model pre-training. Pre-traning is applied to predict a lysine site is a lactated site or not.
 
* integrated_DNN.py
  
    The code is a fully connected neural networks framework that can summarize the 11 scores and make a final prediction for model training and evaluation. Integrated_DNN will not participate in transfer-learning. 
    
* transfer_learning.py

    The code is for 11 DNNs transfer learning in order to apply these DNNs to predict a lactated lysine site is functional or not.
    
* predict.py

    The code is to use iFKla containing 11 DNNs and integrated DNN we mentioned above to use 11 features generated from a group of LSP(10, 10) peptides (Kla sites) to scoring them and predict each of them is functional or not.

* evaluate.py

    The code is used for getting the Sensitivity, Specificity, and ROC auc scores of 11 DNNs and integrated DNN.

* ROC.py

    The code is used to draw 11 ROC curves of iFKla model consisting of 11 parallel DNNs and integrated DNN.
    
* models 

    The model of iFKla's 11 DNNs after transfer-learning and the final integrated_DNN.
      
  
