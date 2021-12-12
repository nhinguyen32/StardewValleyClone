index = irandom(100);
index = clamp(index, 0, 8);
hasCrop = false;

function NextDay() {
	if (index == 10) {
		index = 9;
	}
	hasCrop = false;
}