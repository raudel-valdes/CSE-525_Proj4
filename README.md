# CSE-525_Proj4
## Static Execution Branch
This branch attempted to verify whether optimizations from -floop-interchange and -O[0-3] flags were affected due to the dynamic initialization used in **master.**

While overall optimizations improved greatly, the same pattern of optimizations were apearent: **-floop-interchange had a negligable, if any, impact on execution. No notable improvements can be discerned other than -O0 to -O1.**
