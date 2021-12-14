# python script to set up the dotfiles in the home directory

# USAGE:
# $ python3 setup.py
# OR
# $ python3 setup.py /home/dir

import os
import shutil
import sys
from pathlib import Path

# only include the dotfiles we care about
EXCLUDE = [
    'README.md',
    '.git',
    'LICENSE'
]

if len(sys.argv) > 1:
    home_dir = sys.argv[1]
else:
    home_dir = Path(os.path.expanduser('~'))

for fpath in (home_dir / 'dotfiles').glob('*'):
    if fpath.name in EXCLUDE:
        continue

    destination = home_dir / fpath.name

    # check if it already exists, and if it does delete!
    if destination.exists():
        if destination.is_dir():
            shutil.rmtree(destination)
        else:
            os.remove(destination)

    # move!
    shutil.move(fpath, destination)
