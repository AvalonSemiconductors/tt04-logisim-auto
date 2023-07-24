# LogisimEvolution for TinyTapeout 4

This repository contains an automated flow for going from a LogisimEvolution circuit file, to a GDSII file ready for submission to TinyTapeout 4.

## Get started

To use this repo, simply create a fork of it (or clone and change origin), and you’re already ready to edit the `source.circ` file. It contains a simple example circuit that you can edit and replace with your own. Instantiate the `chip` circuit to test your design (it handles tri-stating the bi-directional port).

**Do not delete and re-create `source.circ`!** Even if you re-create the pins just as in the original, it will still break the repo, as the required project settings in the original file will be lost.
