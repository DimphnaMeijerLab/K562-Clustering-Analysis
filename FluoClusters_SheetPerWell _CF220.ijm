
run("Set Measurements...", "area mean modal perimeter bounding fit shape feret's integrated skewness kurtosis area_fraction display add redirect=None decimal=3");

for (j=3; j<4; j++){
for (i=1;i<6;i++){
open("O:/CF217-217-219_N1-N3/A1B1/CF220_20EP_"+j+"__000"+i+"_GFP.tiff");
//open("D:/CF151_N1/24hClustering/CF151_"+j+"_24hClustering_000"+i+"_RFP.tiff");
//run("Merge Channels...", "c1=CF151_"+j+"_24hClustering_000"+i+"_RFP.tiff c5=CF151_"+j+"_24hClustering_000"+i+"_GFP.tiff create keep ignore");
//run("RGB Color");
//run("8-bit");
//selectWindow("Composite");
//close();
//selectWindow("Composite (RGB)");
run("Subtract Background...", "rolling=50 sliding disable");
setAutoThreshold("Triangle dark");
//setThreshold(31, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
run("Analyze Particles...", "size=100-Infinity exclude include add");
selectWindow("CF220_20EP_"+j+"__000"+i+"_GFP.tiff");
roiManager("Show None");
roiManager("Show All");
roiManager("Measure");
//selectWindow("CF151_"+j+"_24hClustering_000"+i+"_RFP.tiff");
//run("Subtract Background...", "rolling=50 sliding disable");
//roiManager("Show All");
//roiManager("Measure");
close("CF220_20EP_"+j+"__000"+i+"_GFP.tiff");
//close("CF151_"+j+"_24hClustering_000"+i+"_RFP.tiff");
//close("Composite (RGB)");
roiManager("Delete");
}
saveAs("Results", "O:/CF217-217-219_N1-N3/A1B1/CF220_A0B0_20hClustering_GFP.csv");
run("Clear Results");
//}


