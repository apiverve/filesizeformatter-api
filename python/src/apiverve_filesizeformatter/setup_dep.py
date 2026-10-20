from setuptools import setup, find_packages

setup(
    name='apiverve_filesizeformatter',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='File Size Formatter converts raw byte counts into human-readable file size strings. Send a byte count with optional precision and unit settings to receive formatted labels, unit names, and scaled numeric values.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/filesizeformatter?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
