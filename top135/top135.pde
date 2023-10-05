size(280, 280);

String[] fileLines = loadStrings("top135.txt");
int[][] pixels = new int[28][28];

for(int r = 0; r < 28; r++) {
  String[] line = fileLines[r].split(",");
  for(int c = 0; c < 28; c++) {
    pixels[r][c] = Integer.parseInt(line[c].trim());
  }
}

stroke(color(128,0,0));
//noStroke();
for(int r = 0; r < 28; r++) {
  for(int c = 0; c < 28; c++) {
    fill(color(pixels[r][c]));
    rect(c * 10.0f, r * 10.0f, 10.0f, 10.0f);
  }
}

save("top135.jpg");

exit();
