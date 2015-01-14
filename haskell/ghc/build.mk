# -----------------------------------------------------------------------------
# A Sample build.mk
#
# Uncomment one of the following BuildFlavour settings to get the desired
# overall build type, and then tweak the options in the relevant section
# below.

# Uncomment one of these to select a build profile below:

# Full build with max optimisation and everything enabled (very slow build)
buildFlavour = perf

# Fast build with optimised libraries, no profiling (RECOMMENDED):
#BuildFlavour = quick

# Even faster build.  NOT RECOMMENDED: the libraries will be
# completely unoptimised, so any code built with this compiler
# (including stage2) will run very slowly:
#BuildFlavour = quickest

# Profile the stage2 compiler:
#BuildFlavour = prof

# A development build, working on the stage 1 compiler:
#BuildFlavour = devel1

# A development build, working on the stage 2 compiler:
#BuildFlavour = devel2

# An unregisterised, optimised build of ghc, for porting:
#BuildFlavour = unreg

GhcLibWays = v
V = 0

# -------- 1. A Performance/Distribution build--------------------------------

SRC_HC_OPTS     = -O -H64m
GhcStage1HcOpts = -O -fasm
GhcStage2HcOpts = -O2 -fasm
GhcHcOpts       = -Rghc-timing
GhcLibHcOpts    = -O2
#GhcLibWays     += p
SplitObjs          = YES
DYNAMIC_GHC_PROGRAMS = NO
HADDOCK_DOCS       = NO
BUILD_DOCBOOK_HTML = NO
BUILD_DOCBOOK_PS   = NO
BUILD_DOCBOOK_PDF  = NO


# NoFib settings
NoFibWays =
STRIP_CMD = :
