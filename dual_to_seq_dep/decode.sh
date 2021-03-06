#!/bin/bash
#SBATCH --partition=gpu --gres=gpu:1 --time=5:00:00 --output=decode.out --error=decode.err
#SBATCH --mem=8GB
#SBATCH -c 1
# --reservation=lsong10-apr2018 -p reserved

start=`date +%s`
python src/G2S_beam_decoder.py --model_prefix logs/G2S.$1 \
        --in_path data/newstest$2\.tok.json \
        --out_path logs/newstest$2\.$1\.tok \
        --mode beam

end=`date +%s`
runtime=$((end-start))
echo $runtime
