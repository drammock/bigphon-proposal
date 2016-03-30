---
title: Semi-automated pitch and formant analysis for mid-sized corpora
documentclass: article
classoption: oneside
fontsize: 12pt
geometry:
- letterpaper
- margin=1in
---

Although there is a culture of script-sharing among users of the Praat speech analysis software,[@praat] differences in researchers' interests and the recording details of their corpora can render shared scripts difficult to use.
One source of difficulty stems from the need for user-specified parameters for Praat’s formant- and pitch-tracking algorithms.
The optimal parameters vary depending on the voice of the talker and the quality of the recording; however, parameters may be left unspecified (in which case results will depend on whatever settings are in place on a particular computer at the time the script is run), or hard-coded into the script’s source code (making the parameters difficult to change for inexperienced programmers).

Even when they are made easy to change (e.g., through well-documented source code, or a dialog box presented when a script is initially run), they are often set once for an entire set of materials.
This is particularly problematic in the case of corpora comprising diverse talkers, which often cannot be fruitfully analyzed with a one-size-fits-all set of algorithm parameters.
Errors such as pitch halving, pitch doubling, and spurious or unstable formant tracking become increasingly likely as automated scripts are applied to larger and more diverse speech corpora.
The problem is not in the algorithms themselves, but in their application: they are designed to be tweaked and tuned by human users in order to yield optimal results, but are being used as “fire and forget” tools.

One solution is for the researcher to manually specify the parameters and validate the analyses for each of the applicable recordings.
But this forces the user to take control of a number of aspects that are error-free when automated, such as opening files, finding temporal spans of interest, etc.

“Praat semiauto” is a collection of scripts designed to alleviate these problems by automating only the aspects of the measurement task that are error-free when performed by the computer unsupervised: opening files, finding the temporal spans of interest, placing the cursor, tabulating measurements, etc.
What the semiauto tools do _not_ automate is the act of measurement itself: when the scripts run, each measurement location is displayed onscreen at a consistent zoom level along with a dialog box displaying the current algorithm parameters.
Users may alter the parameters at will until satisfied with the analysis, and the parameters are saved alongside the measurements to ensure reproducibility.
Measurement locations are specified with a regular expression operating on a TextGrid tier, and users can control the number of measurements taken at each measurement location (i.e., the script can keep all analysis frames within the measurement window, or users can specify to take _n_ measurements at _n_ equally-spaced timepoints in the window).

# References {-}

<!-- TODO: wrap up with a statement of when you would use the tools (i.e., small-to-medium corpora, or when high accuracy is required like when studying near-mergers) -->
<!-- TODO: cpran: The semiauto tools are distributed through CPrAN [@cpran], so there will also be a brief discussion of that... -->
<!-- TODO: say something about automatic vs hand measurement accuracy? @ShadleEtAl2016 -->
<!-- TODO: other tools in the pipeline: syllable segmentation? -->
<!-- TODO: mention narrow vs wideband for pitch vs formant tool? -->
