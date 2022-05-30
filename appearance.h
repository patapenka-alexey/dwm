#ifndef APPEARANCE_H
#define APPEARANCE_H

static const unsigned int borderpx  = 3;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char menuworddelimiters[] = " ";
static const char *fonts[]          = { "Consolas:size=12" };
static const char dmenufont[]       = "Consolas:size=12";
static const char fg_norm[]         = "#f8f8f2";
static const char bg_norm[]         = "#282a36";
static const char border_norm[]     = "#44475a";
static const char fg_sel[]          = "#f8f8f2";
static const char bg_sel[]          = "#6272a4";
static const char border_sel[]      = "#34b528";
static const char fg_out[]          = "#000000";
static const char bg_out[]          = "#00ffff";
static const char border_out[]      = "#000000";

static const char *colors[SchemeLast][3] = {
	/*     fg         bg       */
	[SchemeNorm] = { fg_norm, bg_norm, border_norm },
	[SchemeSel] = { fg_sel, bg_sel, border_sel },
	[SchemeOut] = { fg_out, bg_out, border_out },
};

#endif /* APPEARANCE_H */
