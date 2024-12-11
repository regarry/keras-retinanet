#!/bin/bash
#BSUB -n 8
#BSUB -W 72:00
#BSUB -R "rusage[mem=5GB]"
#BSUB -R "span[hosts=1]"
#BSUB -o ./logs/%J.out
#BSUB -e ./logs/%J.out
source ~/.bashrc
source /usr/share/Modules/init/bash
#module load cuda/12.0
conda activate /usr/local/usrapps/$GROUP/$USER/retinanet # enter the full path to the conda environment
#conda activate /rsstu/users/t/tghashg/MADMbrains/Ryan/conda/unet 
hostname
#nvidia-smi
#nvcc --version
#python -c "import tensorflow as tf; print(tf.config.list_physical_devices('GPU'))"

python inferenceStitch.py