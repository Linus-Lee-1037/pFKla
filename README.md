# pFKla
prediction of Functional lysine lactylation sites 

We developed a new hybrid-learning model for functional lysine lactylation sites prediction. We defined a lactylation site peptide LSP(m, n) as a lactylation residue flanked by upstream m residues and downstream n residues, and LSP(10, 10) was chosen in this study for rapid training. We first encoded an LSP(10, 10) peptide into 11 kinds of 1D feature vectors, then for each feature we had a particular DNN model to predict and get a score so that we had 11 scores for one Kla site. Finally, we use another DNN model named integrated DNN to summarize those 11 scores to give a final score to predict whether a Kla site is functional. 

## Requirements

The main requirements are listed below:

* Python 3.8
* Numpy
* Scikit-Learn
* matplotlib
* Keras
* Pandas


## The description of the pFKla source

* after_cd_hit.py

    The code is used for turning FASTA format sequences after being deredundant by CD-HIT into LSP(10,10) peptides.

* encoding_10features.py

    The code is used for encoding an LSP(10,10) peptide into 10 kinds of 1D feature vectors (PseAAC, CKSAAP, OBC, AAindex, ACF, GPS, PSSM, ASA, SS, and BTA) for DNN training.

* transformer.py

    The code is used for training the transformer model to generate the 11th feature vector, also named transformer. 

* transformer_feature.py

    The code is used for encoding an LSP(10, 10) peptide into a 128D feature vector which is also named transformer. 

* DNN.py

    The code is 11 fully connected neural network frameworks of 11 types of featurese for model pre-training. Pre-training is applied to predict whether a lysine site is a lactated site.
 
* integrated_DNN.py
  
    The code is a fully connected neural network framework that can summarize the 11 scores and make a final prediction for model training and evaluation. Integrated_DNN will not participate in transfer learning. 
    
* transfer_learning.py

    The code is for 11 DNNs' transfer learning to apply these DNNs to predict whether a lactated lysine site is functional.
    
* predict.py

    The code is to use pFKla containing 11 DNNs and the integrated DNN we mentioned above to use 11 features generated from a group of LSP(10, 10) peptides (Kla sites) to score them and predict whether each of them is functional.

* evaluate.py

    The code is used for getting the Sensitivity, Specificity, and ROC auc scores of 11 DNNs and integrated DNN.

* ROC.py

    The code is used to draw 11 ROC curves of the pFKla model consisting of 11 parallel DNNs and integrated DNN.
    
* models 

    The models of pFKla's 11 DNNs after transfer-learning and the final integrated_DNN.
      
  
