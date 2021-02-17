from setuptools import setup, find_packages

setup(
    name="name",
    version="0.0.1",
    packages=find_packages(),
    include_package_data=True,
    package_data = {
        '' : ['*.pickle'],
        '' : ['*.schema'],
        '' : ['*.csv'],
    },
    install_requires=[
        'pandas==1.0.1',
        'scikit-learn',
    ],
    extras_require={
        'dev': [
            'disdat',
            'gitpython',
            'jupyter',
        ]
    },
    python_version='3.6' 
    )
