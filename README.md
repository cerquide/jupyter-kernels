# jupyter-kernels

# TL/DR
```
git clone  git@github.com:cerquide/jupyter-kernels.git
cd jupyter-kernels
./make.sh tf
./make.sh torch
```

After that, kernels tf and torch will be available in your jupyter lab

# How to build an existing kernel and add it to your jupyter lab
```
./make.sh <dir>
```

# How to create a new kernel 
Let the new kernel be named `krn_new`. You need to:
```
cp -R tf krn_new
vi krn_new/requirements.txt  # Remove or include packages at your will
vi krn_new/make.sh           # Add additional commands required to install your kernel (usually empty file)
./make.sh krn_new
```

In case you want to share this kernel with others do 
```
git add krn_new
git commit -m "Added kernel krn_new"
git push
```
