# Particle tracking for drug diffusion and dissolution in the mucus layer

[Project description](https://biifsweden.github.io/projects/2024/04/23/ChristelBergstrom2024-1/)

[Download code](archive/refs/heads/main.zip)

## Installation

### Data pre-processing in FIJI
The pre-processing of the data is done in FIJI software. To install FIJI follow the instructions on the [FIJI website](https://imagej.net/software/fiji/downloads).

### The tracking algorithm 
The tracking algorithm is implemented in Python.

Install the [conda](https://conda.io) package, dependency and environment manager.

Then create the `ChristelBergstrom2024-1` conda environment:

    cd <path to your 'ChristelBergstrom2024-1' directory>
    conda env create -f environment.yml

This will install all necessary project dependencies.

See [trackpy](https://soft-matter.github.io/trackpy/v0.6.2/) For further information about the Trackpy Toolkit.

## Usage

See [Trackpy notebook](notebooks/2024_04_24_trackpy_initial_tests.ipynb).

## License

[MIT](LICENSE)

## Contact

[SciLifeLab BioImage Informatics Facility (BIIF)](https://www.scilifelab.se/units/bioimage-informatics/)

Developed by [Christophe Avenel](mailto:christophe.avenel@it.uu.se)
