// Heroku Coaster

// Adjust scale factor to resize
// unit == millimeter
// 80mm ~ 3.1inch0
width=80;
logo_height=3;
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
