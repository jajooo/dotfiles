static const char norm_fg[] = "#e0edf5";
static const char norm_bg[] = "#102130";
static const char norm_border[] = "#9ca5ab";

static const char sel_fg[] = "#e0edf5";
static const char sel_bg[] = "#84bad6";
static const char sel_border[] = "#e0edf5";

static const char urg_fg[] = "#e0edf5";
static const char urg_bg[] = "#85bfd6";
static const char urg_border[] = "#85bfd6";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
