from setuptools import setup, find_packages

setup(
    name='apiverve_filesizeformatter',
    version='1.1.12',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='File Size Formatter is a tool for converting bytes to human-readable file sizes (KB, MB, GB, TB, etc.). It supports both binary (1024) and decimal (1000) standards with customizable precision.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
