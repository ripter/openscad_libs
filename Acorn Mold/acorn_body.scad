ledge = 5;
padding = 5;

total_acorns = 12;
acorn_width = 28;
acorn_height = 20;

total_rows = 3;
total_cols = total_acorns/total_rows;

cutout_width = (acorn_width + padding) * total_rows;
cutout_depth = (acorn_width + padding) * total_cols;
cutout_height = acorn_height + padding;


difference() {
  cube([cutout_width+(ledge*2), cutout_depth+(ledge*2), cutout_height+(ledge*2)]);

  translate([ledge, ledge, ledge]) {
    color("red") cube([cutout_width, cutout_depth, cutout_height+(ledge*2)]);
  };
}
