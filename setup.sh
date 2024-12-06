#! /bin/bash
cd ../ && pip install -e open_sora && cd cogvideox_factory
pip install -r requirements.txt 

pip uninstall apex
pip uninstall flash-attn
cd ../ && pip install flash-attn --no-build-isolation && cd cogvideox_factory

pip3 install -U xformers==0.0.28 --index-url https://download.pytorch.org/whl/cu121

# git clone https://github.com/huggingface/diffusers.git
# pip install -e ./diffusers

# download or copy the model from huggingface to the model folder
echo "Copying CogVideoX-5b model to the model folder"
mkdir -p ~/.cache/huggingface/hub/
cp -r /data/local-node/mnt/mofs/users/yizhe/huggingface/models--THUDM--CogVideoX-5b ~/.cache/huggingface/hub/

# Optional: install `huggingface_hub` && download toy dataset
# huggingface-cli download \
#   --repo-type dataset Wild-Heart/Disney-VideoGeneration-Dataset \
#   --local-dir video-dataset-disneyY

# bash prepare_dataset.sh