/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int centered = 1;                    /* -c option; centers dmenu on screen */
static int min_width = 600;                    /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
  "Source Code Pro:size=10",
	// "monospace:size=10"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#b8b5ba", "#0f0e0f" },
	[SchemeSel] = { "#b8b5ba", "#53396f" },
 	[SchemeSelHighlight] = { "#714b9a", "#53396f" },
 	[SchemeNormHighlight] = { "#714b9a", "#0f0e0f" },
	[SchemeOut] = { "#b8b5ba", "#714b9a" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 14;
/* -h option; minimum height of a menu line */
static unsigned int lineheight = 26;
static unsigned int min_lineheight = 8;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

/* Size of the window border */
static const unsigned int border_width = 2;
