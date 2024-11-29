#! /bin/bash
pip install -r requirements.txt 

pip uninstall flash-attn
FLASH_ATTENTION_FORCE_BUILD=TRUE pip install flash-attn