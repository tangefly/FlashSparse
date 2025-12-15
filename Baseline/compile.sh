#!/bin/bash

# # Insatll RoDe and Sputnik
cd RoDe &&
rm -rf build &&
mkdir build &&
cd build &&
cmake .. -DGLOG_ROOT_DIR=$HOME/local &&
make &&
cd .. &&
cd .. &&
# Insatll GNNAdvisor, GE-SpMM, cuSPARSE, DTC-SpMM, TC-GNN
rm -rf build &&
python setup.py install
