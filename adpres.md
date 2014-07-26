% Modern signal processing and statistical inference tools for the EEG: Towards the 80's
% Phillip Alday, Jona Sassenhagen

# Overview

## When all you have is a hammer ...

Most neurocognitive EEG analysis, and a lot of neuroimaging in general, employs ...

* Traditionalistic, even ritualistic thinking
	* Categorical designs (*targeted incoherence*, e.g. 2x2 mismatch designs)
	* Categorical analysis (ANOVA, binary "is *p* below .05?" statistics)

* Consequently
	* Myopic DVs (amplitude means in a time window/ERPs)
	* Myopic IVs (again, *2x2 everything*)


----

## We brought a screwdriver, some sandpaper and what looks like a spoon

* Modern preprocessing tools (save more of your data)
	* Esp. ICA eye correction
* More interesting DVs
	* beyond the mean!
* More interesting IVs
	* beyond the 2x2 mismatch paradigm!
* More powerful inference
	* Multilevel parameter estimation

# Part I: beyond the ERP

## Tackling the P600

P300 [@Sutton1965]: a time-variant component whose appearance accompanies salient events  
N400 [@Kutas1980]: a window whose mean amplitude correlates with *semantic* expectability  
P600 [@Osterhout1992]: a window whose mean amplitude correlates with *syntactic* expectability **OR** just a P300?

---

## P600 follows syntactic violations

![](/Users/jona/Dropbox/manuscripts/eeg/osterhout-p6.pdf)

-> Falsifiable prediction: if the P600 follows something different, it does not mark syntax (?)

---

## P600 follows *all kinds of stuff ...*

\centerline{\includegraphics[height=2in]{/Users/jona/Dropbox/manuscripts/eeg/jakub-p6.pdf}}

-> Hypothesis falsified? ... no ...

---

## Testing the P600=P3 hypothesis

* Experimental designs (e.g., different antecedents) do not seem to suffice
	* Saliency hypothesis is circular ("if it elicits a P300, it must have been salient")
	* Syntax hypothesis is circular or irrefutable ("if it elicits a P600, it must have been partially syntactic/if it isn't preceded by a syntactic violation, it's not a P600")
* IVs don't help? Change DVs!
	* P600=Syntax theory only concerns amplitude means in certain time windows
	* P600=P300 theory predicts RT correlation, GSR, Heart rate response, ...

---

## First, let's look at our P600 again

![](/Users/jona/Dropbox/manuscripts/eeg/e-p600.pdf)

---

## (Event-related) Galvanic Skin Response accompanies P600

![](/Users/jona/Dropbox/manuscripts/eeg/e-gsr.pdf)

---

## Heart rate is correlated with P600 amplitude

![](/Users/jona/Dropbox/manuscripts/eeg/e-heart.pdf)

Each time point shows the average correlation between the P600 amplitude (around its peak) and the heart rate at this time point

---

## Single trial analysis: RT/component correlation

![](/Users/jona/Dropbox/manuscripts/eeg/charybdis-rt.pdf)

ERPimages visualise between-trial temporal variance

Each horizontal line shows one trial

---

## Spatial components via ICA



---

# Part II: beyond the ANOVA

## Multilevel modelling
...

## References