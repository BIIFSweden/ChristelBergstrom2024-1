# Particle tracking for drug diffusion and dissolution in the mucus layer

[Project description](https://biifsweden.github.io/projects/2024/04/23/ChristelBergstrom2024-1/)

[Download code](archive/refs/heads/main.zip)

## Installation

### Data pre-processing in FIJI
The pre-processing of the data is done in FIJI software. To install FIJI follow the instructions on the [FIJI website](https://imagej.net/software/fiji/downloads).

### The tracking algorithm 
The tracking algorithm is implemented in Python using Trackpy toolkit.

Install the [conda](https://conda.io) package, dependency and environment manager.

Then create the `ChristelBergstrom2024-1` conda environment:

    cd <path to your 'ChristelBergstrom2024-1' directory>
    conda env create -f environment.yml

This will install all necessary project dependencies.

See [trackpy](https://soft-matter.github.io/trackpy/v0.6.2/) for further information about the Trackpy toolkit.

## Usage
### Data pre-processing in FIJI
Use [FIJI macro](notebooks/1_FIJIMacro_preprocessing_batch.ijm) for performing the batch pre-processing of all the data. The pre-processing consists of morphological top-hat operation with circular structuring element of size 10 and conversion into an 8-bit image.

<a href="url"><img src="Image.jpg"></a>
### The tracking algorithm 
Copy all project data to the [data](data) directory (or use symbolic links).

Then run [Jupyter Lab](https://jupyter.org) from within the `ChristelBergstrom2024-1` conda environment:

    cd <path to your 'ChristelBergstrom2024-1' directory>
    conda activate ChristelBergstrom2024-1
    jupyter-lab

All analysis notebooks can be found in the [notebooks](notebooks) directory.

See [Initial tests notebook](notebooks/Trackpy_initial_tests.ipynb) for detailed explanation of how to tune the tracking parameters on one data example.
Use [Tracking notebook](notebooks/2_Trackpy_tracking_batch.ipynb) with tuned parameters for performing the batch processing on all the data.

## Support

If you find a bug, please [raise an issue](https://github.com/BIIFSweden/ChristelBergstrom2024-1/issues/new).

## License

[MIT](LICENSE)

## Contact

[SciLifeLab BioImage Informatics Facility (BIIF)](https://www.scilifelab.se/units/bioimage-informatics/)

Developed by [Kristina Lidayova](mailto:kristina.lidayova@it.uu.se)
