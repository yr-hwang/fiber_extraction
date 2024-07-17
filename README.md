# Fiber Extraction of Diffusion-Weighted Magnetic Resonance Images (DW-MRI) of Healthy and Disease Groups

This project was carried out to extract the major fiber tracts from the DW-MR images and to compare them between those of the healthy group and disease group.  The disease group consists of images from patients that have Alzheimer's disease (AD) or subcortical vascular dementia (SVaD). The actual DW-MRI used in this project will not be attached to this repository as it is private and confidential.

## Imaging Preprocessing

The datasets provided consist of a total of 10 DW-MR images (.REC files) and their corresponding diffusion-sensitizing gradients (.txt files), 5 for the healthy group (subject number 01) and 5 for the disease group (subject number 02). Each image was loaded into DTI Studio. The diffusion tensor indices were calculated and saved as .img files. Next, deterministic fiber tracking of the entire brain by fiber assignment by continuous tracking (FACT) algorithm was done. The parameters were set as FA = 0.2 and tract turning-angle as 45 degrees. The fibers were saved as .dat files. 

Region-of-interest (ROI) drawing was done with guidance from 'Reproducibility of quantitative tractography methods applied to cerebral white matter' by Wakana et al. The seven major fiber tracts extracted are the anterior thalamic radiation (ATR), cingulum (CG), corticospinal tract (CST), inferior front-occipital fasciculus (IFO), inferior longitudinal fasciculus (ILF), superior longitudinal fasciculus (SLF), and uncinate fasciculus (UNC). A total of 140 fiber tract files (.dat) were produced, 14 fiber tracts for both hemispheres of the 10 subjects. The read_fiber.m script was provided to read the fiber files in MATLAB. A separate script named fiber_extraction_run was created to read all the fiber files and analyze the files quantitatively.

## Qualitative Analysis of Fiber Tracts
Through the observation of the fiber tracts of individuals in the healthy group versus the disease group, it can be observed that the disease group fiber tracts are thinner and lesser than that of the healthy group. For example, diseased subjects may possess a thin CG and CST. On top of that, certain regions of the brain are also degenerated, making ROI drawing difficult for those regions. For instance, diseased subjects may possess degenerated ATR, ILF, and SLF.

## Quantitative Analysis of Fiber Tracts
Within the fiber_extraction_run file, the first five files which belong to the healthy group were first looped through to be read with the read_fiber function. The information from each individual fiber file was saved as a 
