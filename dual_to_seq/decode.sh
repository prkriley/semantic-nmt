#!/bin/bash
start=`date +%s`
python G2S_beam_decoder.py --model_prefix logs/G2S.$1 \
        --in_path data/devtest/newstest$2\.tok.json_allbpe \
        --out_path logs/newstest$2\.$1\.tok \
        --mode beam

end=`date +%s`
runtime=$((end-start))
echo $runtime
