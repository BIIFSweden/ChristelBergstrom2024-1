#@ File (label="Input directory", style="directory") input
#@ File (label="Output directory", style="directory") output
#@ String (label="File suffix", value=".tif") suffix

// Function to scan folders recursively
function processFolderAux(dir) {
    processFolder("");
}

function processFolder(dir) {
	fullindir = input + File.separator + dir;
	fulloutdir = output + File.separator + dir;
    list = getFileList(fullindir);
    for (i = 0; i < list.length; i++) {
    	list[i] = replace(list[i], "/", "");
        if(File.isDirectory(fullindir + File.separator + list[i])) {
           File.makeDirectory(fulloutdir + File.separator + list[i]);
           processFolder(dir + File.separator + list[i]);
        }
        if(endsWith(list[i], suffix))
            processFile(dir, list[i]);
    }
}

// Function to process each file
function processFile(dir, file) {
	fullindir = input + File.separator + dir;
    fulloutdir = output + File.separator + dir;
    open(fullindir + File.separator + file);
    
// Add your processing steps here   
// Do morph_tophat, change the contrast, convert to 8it, save as tif    
    run("Top Hat...", "radius=10 stack");
	run("Enhance Contrast", "saturated=0.35");
	run("Apply LUT", "stack");
	setOption("ScaleConversions", true);
	run("8-bit");
	saveAs("Tiff", fulloutdir + File.separator + file + "_proc");
    close();
}

// Run the macro
org_input = input;
processFolderAux(input);
