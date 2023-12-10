const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#102130", /* black   */
  [1] = "#85bfd6", /* red     */
  [2] = "#84bad6", /* green   */
  [3] = "#9eccde", /* yellow  */
  [4] = "#b2d6e5", /* blue    */
  [5] = "#c2deea", /* magenta */
  [6] = "#cfdcef", /* cyan    */
  [7] = "#e0edf5", /* white   */

  /* 8 bright colors */
  [8]  = "#9ca5ab",  /* black   */
  [9]  = "#85bfd6",  /* red     */
  [10] = "#84bad6", /* green   */
  [11] = "#9eccde", /* yellow  */
  [12] = "#b2d6e5", /* blue    */
  [13] = "#c2deea", /* magenta */
  [14] = "#cfdcef", /* cyan    */
  [15] = "#e0edf5", /* white   */

  /* special colors */
  [256] = "#102130", /* background */
  [257] = "#e0edf5", /* foreground */
  [258] = "#e0edf5",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
