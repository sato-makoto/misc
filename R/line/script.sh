#!/bin/sh
python3 three.py >data
Rscript ../graph_spline.r data

