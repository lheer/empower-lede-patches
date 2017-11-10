# empower-lede-patches
5G-EmPOWER patches and a install script for LEDE


Patches apply to LEDE v17.01.4

HowTo:
    Download LEDE source, e.g. from https://github.com/lede-project/source/releases and unpack
    Edit the LEDE_BASEDIR variable in the bash script "copy.sh" to point to the unpacked source
    Execute script, this will copy the patches to the right folder in LEDE and install the feeds
    Go to the LEDE source folder and continue with "make menuconfig" to e.g. select the right profile
    Build and install LEDE as usual
