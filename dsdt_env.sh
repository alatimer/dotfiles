#Create conda env
conda create --name ttam python=3.6
source activate ttam
pip install -e .[dev]
python -m ipykernel install --user --name=ttam

#Disdat
dsdt init
dsdt context ttam
dsdt switch ttam
dsdt remote ttam s3://baas-cb-sandbox-prd/
dsdt pull
