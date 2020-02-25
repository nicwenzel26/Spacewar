//Decreasing the alpha of the image every step so the debris fades
image_alpha -= 0.01

//If the image is invisable destroy the object
if(image_alpha <= 0) {
	instance_destroy()
}