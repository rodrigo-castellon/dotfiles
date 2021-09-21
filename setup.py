# python script to set up the dotfiles in the home directory

import os
from pathlib import Path

# only include the dotfiles we care about
EXCLUDE = [
    'README.md',
    '.git',
    'LICENSE'
]

home_dir = Path(os.path.expanduser('~'))

for fpath in (home_dir / 'dotfiles').glob('*'):
    if fpath in EXCLUDE:
        continue

    # move!
    os.rename(fpath, home_dir / fpath.stem)
