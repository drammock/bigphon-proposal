---
title: Semi-automated pitch and formant analysis for mid-sized corpora
documentclass: article
classoption: oneside
fontsize: 12pt
geometry:
- letterpaper
- margin=1in
---

Although there is a culture of script-sharing among users of the Praat speech analysis program,[@praat] differences in researchers' interests and the recording details of their corpora can render shared scripts difficult to use.
One source of difficulty stems from the need for user-specified parameters for Praat’s formant- and pitch-tracking algorithms.
The optimal parameters vary depending on the voice of the talker and the quality of the recording; however, parameters may be left unspecified (in which case results will depend on whatever settings are in place on a particular computer at the time the script is run), or hard-coded into the script’s source code (making the parameters difficult to change for inexperienced programmers).

Even when they are made easy to change (e.g., through well-documented source code, or a dialog box presented when a script is initially run), they are often set once for an entire set of materials.
This is particularly problematic in the case of corpora comprising diverse talkers, which often cannot be fruitfully analyzed with a one-size-fits-all set of algorithm parameters.
Errors such as pitch halving, pitch doubling, and spurious or unstable formant tracking become increasingly likely as automated scripts are applied to larger and more diverse speech corpora.
The problem is not in the algorithms themselves, but in their application: they are designed to be tweaked and tuned by human users in order to yield optimal results, but are being used as “fire and forget” tools.

One solution is for the researcher to manually specify the parameters and validate the analyses for each of the applicable recordings.
But this forces the user to take control of a number of aspects that are error-free when automated, such as opening files, finding temporal spans of interest, etc.

We present the "semiauto" collection of scripts, designed to provide a middle ground between a fully automatic and a a fully manual approach: by identifying those aspects that do not require human intervention, the researcher's attention can be focused on those that do, accelerating the fine-grained validation and minimising errors.
A common interface and a consistent approach, and the possibility for users to always go back and review past decisions, also reduces errors and enables both internal and external auditing.

The scripts are targeted to the creation and evaluation of reliable Pitch and Formant objects, which can be analysed later through other automated tools.
The evaluation is done either visually, or by combining the analysis with a TextGrid annotation specifying a series of points or intervals of interest.
In the latter case, the user is provided with a series of measurements either at the given points, or evenly spaced along each interval at a user-specified rate.
A navigation tool is available for the user to quickly move across recordings in the corpus, or marks in the TextGrid in use.

For easier distribution and use, the scripts are bundled as a Praat plugin.
The "semiauto" plugin can be installed manually, or by using CPrAN,[@cpran] a plugin management system for Praat which supports automatic installation, update, and testing for increased reliability.
There will be a brief discussion of its use.

# References {-}

<!-- TODO: wrap up with a statement of when you would use the tools (i.e., small-to-medium corpora, or when high accuracy is required like when studying near-mergers) -->
<!-- TODO: say something about automatic vs hand measurement accuracy? @ShadleEtAl2016 -->
<!-- TODO: other tools in the pipeline: syllable segmentation? -->
<!-- TODO: mention narrow vs wideband for pitch vs formant tool? -->
