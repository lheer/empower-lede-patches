# empower-lede-patches
5G-EmPOWER patches and a install script for LEDE


Patches apply to LEDE v17.01.4


### How to install

```
- Download LEDE source from e.g. https://github.com/lede-project/source/releases and unpack
- Edit the LEDE_BASEDIR variable in the bash script "copy.sh" to point to the unpacked source
- Execute script, this will copy the patches to the right folder in LEDE
- Add the empower feed to LEDE, update and install them
- Continue with "make menuconfig" to e.g. select the right profile
- Build and install LEDE as usual
```
