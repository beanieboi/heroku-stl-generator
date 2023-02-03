// Heroku Logo

// Adjust scale factor to resize
width=100;
logo_height=4;
backplate_height=2;

logo();
backplate();

module backplate() {
  translate([0,0,0])
    scale([1,1,backplate_height/logo_height])
      hull()
        logo();
}


module logo() {
  scale = width/72;
  scale([scale, scale, 1])
    linear_extrude(backplate_height+logo_height)
     import("svg/heroku-logo.svg");
}
