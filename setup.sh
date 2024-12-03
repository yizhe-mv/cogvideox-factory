#! /bin/bash
pip install -r requirements.txt 


cd ../ && pip install flash-attn --no-build-isolation && cd cogvideox_factory
# pip uninstall apex
# pip install -v \
#     --disable-pip-version-check \
#     --no-cache-dir \
#     --no-build-isolation \
#     --config-settings "--build-option=--cpp_ext" \
#     --config-settings "--build-option=--cuda_ext" \
#     git+https://github.com/NVIDIA/apex.git

pip3 install -U xformers==0.0.28 --index-url https://download.pytorch.org/whl/cu121

# git clone https://github.com/huggingface/diffusers.git
# pip install -e ./diffusers


# Optional: install `huggingface_hub` && download toy dataset
huggingface-cli download \
  --repo-type dataset Wild-Heart/Disney-VideoGeneration-Dataset \
  --local-dir video-dataset-disneyY
  
# download or copy the model from huggingface to the model folder
cp -r /data/local-node/mnt/mofs/users/yizhe/huggingface/models--THUDM--CogVideoX-5b ~/.cache/huggingface/hub/
