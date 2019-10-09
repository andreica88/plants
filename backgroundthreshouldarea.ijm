/*
 * this macro subtracts the background, tresholds and measures the area fraction
 * 
 * 2019-10-09: created, ADZ

  */
//Clean up workspace
run("Close All");
  
//load data
run("Cell Colony (31K)");
//Sutract background
run("Subtract Background...", "rolling=100 light sliding");
//Threshold
setAutoThreshold("Otsu");
setOption("BlackBackground", true);
run("Convert to Mask");
//Measure
run("Set Measurements...", "area_fraction display redirect=None decimal=3");
run("Analyze Particles...", "  show=Masks summarize");

