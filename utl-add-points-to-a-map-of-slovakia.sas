
Add points to a map of slovakia

github
https://github.com/rogerjdeangelis/utl-add-points-to-a-map-of-slovakia

StackOerflow
https://tinyurl.com/y4w2mbd5
https://stackoverflow.com/questions/56984646/how-to-add-data-points-from-dataframe-to-polygon-map-of-administrative-regions-o

other repo
https://tinyurl.com/y4aodunh
https://github.com/rogerjdeangelis/utl-plot-eighteen-random-points-within-Nova-Scotia

*_                   _
(_)_ __  _ __  _   _| |_
| | '_ \| '_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
;

options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;
  INPUT x y;
cards4;
17.1 48.1
21.2 48.7
18.7 49.2
21.2 49.0
18.0 48.8
19.1 48.7
17.5 48.3
18.0 48.3
20.2 49.0
18.1 47.9
18.6 48.7
17.8 48.5
18.9 49.0
19.1 48.5
18.1 48.5
20.5 48.9
21.9 48.7
;;;;
run;quit;

*            _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| '_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
;


                       gwT3VW  nru4KT                   wQ  pE
                     VYnnTg q7gD    PbJu     yq3JiHQ sJ0Kkwo6IKuRS
                  fV4C                IX  ApNZ     RgN           LCB
                  v                   gedyz                        YwQMtV
                 cO  _                          _                      xr
              lJeW  (_)          _             (_)                    v5
      zJSpEjj32                 (_)                                   M
    bok                                                         _    AY
   wO                  _                         cIzI5t J1F6R  (_)  b
   d                  (_)                      o0S   5202   Psx     KI
  sb                                          CK              vy6mDN8
  B8                              A nm     Gx1m
   Stq                             zLaPdgXwf
     iXo                  q1pQyGprAz
       uOO                U
         LAY1 FIq5d   lGMjmI
            fmNb  zW7s8

*          _       _   _
 ___  ___ | |_   _| |_(_) ___  _ __
/ __|/ _ \| | | | | __| |/ _ \| '_ \
\__ \ (_) | | |_| | |_| | (_) | | | |
|___/\___/|_|\__,_|\__|_|\___/|_| |_|

;

%utlfkil(d:/png/slovakia.png);
%utl_submit_r64('
library(haven);
library(ggplot2);
library(raster);
slov_df<-read_sas("d:/sd1/have.sas7bdat");
slovakia_level_1 <- getData("GADM", country="SVK", level=1);
slovakia_level_2 <- getData("GADM", country="SVK", level=2);
slov_reg <- fortify(slovakia_level_2);
png(file="d:/png/slovakia.png",800,640);
ggplot() +
  geom_polygon(data = slov_reg, aes(x = long, y = lat, group = group), col = "black", fill = NA) +
  geom_point(data = slov_df, aes(X, Y), color="red", size=3) +
  theme_bw();
png();
');

