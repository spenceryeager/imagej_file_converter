/* ImageJ macro for converting tif files ( other supported ImageJ files) into 
	jpeg for easy uploading. This does not alter the scale of the image. 
	Directory input and output can be selected, with the output generating
	an additional folder titled "jpg_convert" */

function action(input, output, filename) {
	open(input + filename);
	saveAs("Jpeg", output + filename);
	close();
}

input = getDirectory("Choose a input directory");
output = getDirectory("Choose output directory") + "jpg_convert/";
File.makeDirectory(output);

setBatchMode(true);
list = getFileList(input);
for (i = 0; i < list.length; i++) {
	action(input, output, list[i]);
}
setBatchMode(false);

