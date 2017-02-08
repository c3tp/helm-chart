#!/bin/bash
# Conda packages & nltk downloading for humanities connector (troland)
# and history (lknelson3)
${CONDA_DIR}/bin/conda install --quiet --yes \
            gensim=0.12.4 \
            nltk=3.2.1

# We put NLTK data under /opt/conda, 
# and then set the NLTK_DATA
# environment variable appropriately. See
# http://www.nltk.org/data.html#command-line-installation
# for more info.
mkdir ${CONDA_DIR}/nltk

# MODEL_____________________  COURSES___________
# averaged_perceptron_tagger: history humanities
#                    cmudict:         humanities
#          maxent_ne_chunker: history humanities
#                      punkt: history humanities
#                  stopwords: history
#                    wordnet: history humanities
#                      words: history humanities
${CONDA_DIR}/bin/python -m nltk.downloader -d ${CONDA_DIR}/nltk \
    averaged_perceptron_tagger \
    cmudict \
    maxent_ne_chunker \
    punkt \
    stopwords \
    wordnet \
    words \
    ;
