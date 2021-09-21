# python script to set up the dotfiles in the home directory

import os
import shutil
from pathlib import Path

# only include the dotfiles we care about
EXCLUDE = [
    'README.md',
    '.git',
    'LICENSE'
]

home_dir = Path(os.path.expanduser('~'))

for fpath in (home_dir / 'dotfiles').glob('*'):
    if fpath.stem in EXCLUDE:
        continue

    destination = home_dir / fpath.stem

    # check if it already exists, and if it does delete!
    if destination.exists():
        if destination.is_dir():
            shutil.rmtree(destination)
        else:
            os.remove(destination)

    # move!
    os.rename(fpath, destination)
