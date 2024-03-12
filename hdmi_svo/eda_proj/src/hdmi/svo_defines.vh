`define SVO_XYBITS 14

`define SVO_DEFAULT_PARAMS parameter \
    SVO_MODE             =  "640x480", \
    SVO_FRAMERATE        =  60, \
    SVO_BITS_PER_PIXEL   =  24, \
    SVO_BITS_PER_RED     =   8, \
    SVO_BITS_PER_GREEN   =   8, \
    SVO_BITS_PER_BLUE    =   8, \
    SVO_BITS_PER_ALPHA   =   0

`define SVO_PASS_PARAMS \
    .SVO_MODE             (SVO_MODE),           \
    .SVO_FRAMERATE        (SVO_FRAMERATE),      \
    .SVO_BITS_PER_PIXEL   (SVO_BITS_PER_PIXEL), \
    .SVO_BITS_PER_RED     (SVO_BITS_PER_RED),   \
    .SVO_BITS_PER_GREEN   (SVO_BITS_PER_GREEN), \
    .SVO_BITS_PER_BLUE    (SVO_BITS_PER_BLUE),  \
    .SVO_BITS_PER_ALPHA   (SVO_BITS_PER_ALPHA)

`define SVO_DECLS \
localparam SVO_HOR_PIXELS = \
  SVO_MODE == "640x480V" ? 640 : \
  SVO_MODE == "960x540" ? 960 : \
  SVO_MODE == "768x576" ? 768 : \
  SVO_MODE == "1280x854R" ? 1280 : \
  SVO_MODE == "2560x2048R" ? 2560 : \
  SVO_MODE == "1920x1200" ? 1920 : \
  SVO_MODE == "480x320R" ? 480 : \
  SVO_MODE == "1280x768R" ? 1280 : \
  SVO_MODE == "2560x1440R" ? 2560 : \
  SVO_MODE == "2048x1536" ? 2048 : \
  SVO_MODE == "1024x576" ? 1024 : \
  SVO_MODE == "320x200" ? 320 : \
  SVO_MODE == "384x288R" ? 384 : \
  SVO_MODE == "1280x1024R" ? 1280 : \
  SVO_MODE == "768x576R" ? 768 : \
  SVO_MODE == "2048x1536R" ? 2048 : \
  SVO_MODE == "1024x576R" ? 1024 : \
  SVO_MODE == "1680x1050R" ? 1680 : \
  SVO_MODE == "1280x854" ? 1280 : \
  SVO_MODE == "2560x2048" ? 2560 : \
  SVO_MODE == "1440x900R" ? 1440 : \
  SVO_MODE == "2048x1080" ? 2048 : \
  SVO_MODE == "1152x768R" ? 1152 : \
  SVO_MODE == "4096x2160" ? 4096 : \
  SVO_MODE == "4096x2160R" ? 4096 : \
  SVO_MODE == "800x480" ? 800 : \
  SVO_MODE == "2560x1080R" ? 2560 : \
  SVO_MODE == "1440x1080R" ? 1440 : \
  SVO_MODE == "854x480" ? 854 : \
  SVO_MODE == "640x480" ? 640 : \
  SVO_MODE == "480x320" ? 480 : \
  SVO_MODE == "1920x1200R" ? 1920 : \
  SVO_MODE == "3840x2160" ? 3840 : \
  SVO_MODE == "1400x1050" ? 1400 : \
  SVO_MODE == "854x480R" ? 854 : \
  SVO_MODE == "1680x1050" ? 1680 : \
  SVO_MODE == "320x200R" ? 320 : \
  SVO_MODE == "1920x1080R" ? 1920 : \
  SVO_MODE == "1920x1080" ? 1920 : \
  SVO_MODE == "2560x1440" ? 2560 : \
  SVO_MODE == "1440x900" ? 1440 : \
  SVO_MODE == "1024x600" ? 1024 : \
  SVO_MODE == "1400x1050R" ? 1400 : \
  SVO_MODE == "1366x768" ? 1366 : \
  SVO_MODE == "1440x1080" ? 1440 : \
  SVO_MODE == "1600x900" ? 1600 : \
  SVO_MODE == "64x48T" ? 64 : \
  SVO_MODE == "640x480R" ? 640 : \
  SVO_MODE == "352x288R" ? 352 : \
  SVO_MODE == "1024x768" ? 1024 : \
  SVO_MODE == "800x600" ? 800 : \
  SVO_MODE == "1280x960" ? 1280 : \
  SVO_MODE == "1024x768R" ? 1024 : \
  SVO_MODE == "1280x960R" ? 1280 : \
  SVO_MODE == "1600x900R" ? 1600 : \
  SVO_MODE == "800x600R" ? 800 : \
  SVO_MODE == "1280x800" ? 1280 : \
  SVO_MODE == "384x288" ? 384 : \
  SVO_MODE == "352x288" ? 352 : \
  SVO_MODE == "800x480R" ? 800 : \
  SVO_MODE == "1440x960" ? 1440 : \
  SVO_MODE == "3840x2160R" ? 3840 : \
  SVO_MODE == "2048x1080R" ? 2048 : \
  SVO_MODE == "1280x800R" ? 1280 : \
  SVO_MODE == "1366x768R" ? 1366 : \
  SVO_MODE == "1600x1200R" ? 1600 : \
  SVO_MODE == "2560x1600" ? 2560 : \
  SVO_MODE == "1600x1200" ? 1600 : \
  SVO_MODE == "320x240" ? 320 : \
  SVO_MODE == "1152x864" ? 1152 : \
  SVO_MODE == "1440x960R" ? 1440 : \
  SVO_MODE == "2560x1080" ? 2560 : \
  SVO_MODE == "1152x768" ? 1152 : \
  SVO_MODE == "1280x720" ? 1280 : \
  SVO_MODE == "1152x864R" ? 1152 : \
  SVO_MODE == "1024x600R" ? 1024 : \
  SVO_MODE == "1280x1024" ? 1280 : \
  SVO_MODE == "1280x768" ? 1280 : \
  SVO_MODE == "1280x720R" ? 1280 : \
  SVO_MODE == "2560x1600R" ? 2560 : \
  SVO_MODE == "320x240R" ? 320 : \
  'bx; \
localparam SVO_VER_PIXELS = \
  SVO_MODE == "640x480V" ? 480 : \
  SVO_MODE == "960x540" ? 540 : \
  SVO_MODE == "768x576" ? 576 : \
  SVO_MODE == "1280x854R" ? 854 : \
  SVO_MODE == "2560x2048R" ? 2048 : \
  SVO_MODE == "1920x1200" ? 1200 : \
  SVO_MODE == "480x320R" ? 320 : \
  SVO_MODE == "1280x768R" ? 768 : \
  SVO_MODE == "2560x1440R" ? 1440 : \
  SVO_MODE == "2048x1536" ? 1536 : \
  SVO_MODE == "1024x576" ? 576 : \
  SVO_MODE == "320x200" ? 200 : \
  SVO_MODE == "384x288R" ? 288 : \
  SVO_MODE == "1280x1024R" ? 1024 : \
  SVO_MODE == "768x576R" ? 576 : \
  SVO_MODE == "2048x1536R" ? 1536 : \
  SVO_MODE == "1024x576R" ? 576 : \
  SVO_MODE == "1680x1050R" ? 1050 : \
  SVO_MODE == "1280x854" ? 854 : \
  SVO_MODE == "2560x2048" ? 2048 : \
  SVO_MODE == "1440x900R" ? 900 : \
  SVO_MODE == "2048x1080" ? 1080 : \
  SVO_MODE == "1152x768R" ? 768 : \
  SVO_MODE == "4096x2160" ? 2160 : \
  SVO_MODE == "4096x2160R" ? 2160 : \
  SVO_MODE == "800x480" ? 480 : \
  SVO_MODE == "2560x1080R" ? 1080 : \
  SVO_MODE == "1440x1080R" ? 1080 : \
  SVO_MODE == "854x480" ? 480 : \
  SVO_MODE == "640x480" ? 480 : \
  SVO_MODE == "480x320" ? 320 : \
  SVO_MODE == "1920x1200R" ? 1200 : \
  SVO_MODE == "3840x2160" ? 2160 : \
  SVO_MODE == "1400x1050" ? 1050 : \
  SVO_MODE == "854x480R" ? 480 : \
  SVO_MODE == "1680x1050" ? 1050 : \
  SVO_MODE == "320x200R" ? 200 : \
  SVO_MODE == "1920x1080R" ? 1080 : \
  SVO_MODE == "1920x1080" ? 1080 : \
  SVO_MODE == "2560x1440" ? 1440 : \
  SVO_MODE == "1440x900" ? 900 : \
  SVO_MODE == "1024x600" ? 600 : \
  SVO_MODE == "1400x1050R" ? 1050 : \
  SVO_MODE == "1366x768" ? 768 : \
  SVO_MODE == "1440x1080" ? 1080 : \
  SVO_MODE == "1600x900" ? 900 : \
  SVO_MODE == "64x48T" ? 48 : \
  SVO_MODE == "640x480R" ? 480 : \
  SVO_MODE == "352x288R" ? 288 : \
  SVO_MODE == "1024x768" ? 768 : \
  SVO_MODE == "800x600" ? 600 : \
  SVO_MODE == "1280x960" ? 960 : \
  SVO_MODE == "1024x768R" ? 768 : \
  SVO_MODE == "1280x960R" ? 960 : \
  SVO_MODE == "1600x900R" ? 900 : \
  SVO_MODE == "800x600R" ? 600 : \
  SVO_MODE == "1280x800" ? 800 : \
  SVO_MODE == "384x288" ? 288 : \
  SVO_MODE == "352x288" ? 288 : \
  SVO_MODE == "800x480R" ? 480 : \
  SVO_MODE == "1440x960" ? 960 : \
  SVO_MODE == "3840x2160R" ? 2160 : \
  SVO_MODE == "2048x1080R" ? 1080 : \
  SVO_MODE == "1280x800R" ? 800 : \
  SVO_MODE == "1366x768R" ? 768 : \
  SVO_MODE == "1600x1200R" ? 1200 : \
  SVO_MODE == "2560x1600" ? 1600 : \
  SVO_MODE == "1600x1200" ? 1200 : \
  SVO_MODE == "320x240" ? 240 : \
  SVO_MODE == "1152x864" ? 864 : \
  SVO_MODE == "1440x960R" ? 960 : \
  SVO_MODE == "2560x1080" ? 1080 : \
  SVO_MODE == "1152x768" ? 768 : \
  SVO_MODE == "1280x720" ? 720 : \
  SVO_MODE == "1152x864R" ? 864 : \
  SVO_MODE == "1024x600R" ? 600 : \
  SVO_MODE == "1280x1024" ? 1024 : \
  SVO_MODE == "1280x768" ? 768 : \
  SVO_MODE == "1280x720R" ? 720 : \
  SVO_MODE == "2560x1600R" ? 1600 : \
  SVO_MODE == "320x240R" ? 240 : \
  'bx; \
localparam SVO_HOR_FRONT_PORCH = \
  SVO_MODE == "640x480V" ? 16 : \
  SVO_MODE == "960x540" ? 128 : \
  SVO_MODE == "768x576" ? 32 : \
  SVO_MODE == "1280x854R" ? 48 : \
  SVO_MODE == "2560x2048R" ? 48 : \
  SVO_MODE == "1920x1200" ? 136 : \
  SVO_MODE == "480x320R" ? 48 : \
  SVO_MODE == "1280x768R" ? 48 : \
  SVO_MODE == "2560x1440R" ? 48 : \
  SVO_MODE == "2048x1536" ? 160 : \
  SVO_MODE == "1024x576" ? 40 : \
  SVO_MODE == "320x200" ? 16 : \
  SVO_MODE == "384x288R" ? 48 : \
  SVO_MODE == "1280x1024R" ? 48 : \
  SVO_MODE == "768x576R" ? 48 : \
  SVO_MODE == "2048x1536R" ? 48 : \
  SVO_MODE == "1024x576R" ? 48 : \
  SVO_MODE == "1680x1050R" ? 48 : \
  SVO_MODE == "1280x854" ? 72 : \
  SVO_MODE == "2560x2048" ? 208 : \
  SVO_MODE == "1440x900R" ? 48 : \
  SVO_MODE == "2048x1080" ? 128 : \
  SVO_MODE == "1152x768R" ? 48 : \
  SVO_MODE == "4096x2160" ? 336 : \
  SVO_MODE == "4096x2160R" ? 48 : \
  SVO_MODE == "800x480" ? 24 : \
  SVO_MODE == "2560x1080R" ? 48 : \
  SVO_MODE == "1440x1080R" ? 48 : \
  SVO_MODE == "854x480" ? 24 : \
  SVO_MODE == "640x480" ? 24 : \
  SVO_MODE == "480x320" ? 16 : \
  SVO_MODE == "1920x1200R" ? 48 : \
  SVO_MODE == "3840x2160" ? 320 : \
  SVO_MODE == "1400x1050" ? 88 : \
  SVO_MODE == "854x480R" ? 48 : \
  SVO_MODE == "1680x1050" ? 104 : \
  SVO_MODE == "320x200R" ? 48 : \
  SVO_MODE == "1920x1080R" ? 48 : \
  SVO_MODE == "1920x1080" ? 128 : \
  SVO_MODE == "2560x1440" ? 192 : \
  SVO_MODE == "1440x900" ? 88 : \
  SVO_MODE == "1024x600" ? 48 : \
  SVO_MODE == "1400x1050R" ? 48 : \
  SVO_MODE == "1366x768" ? 72 : \
  SVO_MODE == "1440x1080" ? 88 : \
  SVO_MODE == "1600x900" ? 96 : \
  SVO_MODE == "64x48T" ? 2 : \
  SVO_MODE == "640x480R" ? 48 : \
  SVO_MODE == "352x288R" ? 48 : \
  SVO_MODE == "1024x768" ? 48 : \
  SVO_MODE == "800x600" ? 32 : \
  SVO_MODE == "1280x960" ? 80 : \
  SVO_MODE == "1024x768R" ? 48 : \
  SVO_MODE == "1280x960R" ? 48 : \
  SVO_MODE == "1600x900R" ? 48 : \
  SVO_MODE == "800x600R" ? 48 : \
  SVO_MODE == "1280x800" ? 72 : \
  SVO_MODE == "384x288" ? 16 : \
  SVO_MODE == "352x288" ? 8 : \
  SVO_MODE == "800x480R" ? 48 : \
  SVO_MODE == "1440x960" ? 88 : \
  SVO_MODE == "3840x2160R" ? 48 : \
  SVO_MODE == "2048x1080R" ? 48 : \
  SVO_MODE == "1280x800R" ? 48 : \
  SVO_MODE == "1366x768R" ? 48 : \
  SVO_MODE == "1600x1200R" ? 48 : \
  SVO_MODE == "2560x1600" ? 200 : \
  SVO_MODE == "1600x1200" ? 112 : \
  SVO_MODE == "320x240" ? 16 : \
  SVO_MODE == "1152x864" ? 64 : \
  SVO_MODE == "1440x960R" ? 48 : \
  SVO_MODE == "2560x1080" ? 160 : \
  SVO_MODE == "1152x768" ? 64 : \
  SVO_MODE == "1280x720" ? 64 : \
  SVO_MODE == "1152x864R" ? 48 : \
  SVO_MODE == "1024x600R" ? 48 : \
  SVO_MODE == "1280x1024" ? 88 : \
  SVO_MODE == "1280x768" ? 64 : \
  SVO_MODE == "1280x720R" ? 48 : \
  SVO_MODE == "2560x1600R" ? 48 : \
  SVO_MODE == "320x240R" ? 48 : \
  'bx; \
localparam SVO_HOR_SYNC = \
  SVO_MODE == "640x480V" ? 96 : \
  SVO_MODE == "960x540" ? 112 : \
  SVO_MODE == "768x576" ? 72 : \
  SVO_MODE == "1280x854R" ? 32 : \
  SVO_MODE == "2560x2048R" ? 32 : \
  SVO_MODE == "1920x1200" ? 200 : \
  SVO_MODE == "480x320R" ? 32 : \
  SVO_MODE == "1280x768R" ? 32 : \
  SVO_MODE == "2560x1440R" ? 32 : \
  SVO_MODE == "2048x1536" ? 216 : \
  SVO_MODE == "1024x576" ? 96 : \
  SVO_MODE == "320x200" ? 24 : \
  SVO_MODE == "384x288R" ? 32 : \
  SVO_MODE == "1280x1024R" ? 32 : \
  SVO_MODE == "768x576R" ? 32 : \
  SVO_MODE == "2048x1536R" ? 32 : \
  SVO_MODE == "1024x576R" ? 32 : \
  SVO_MODE == "1680x1050R" ? 32 : \
  SVO_MODE == "1280x854" ? 128 : \
  SVO_MODE == "2560x2048" ? 280 : \
  SVO_MODE == "1440x900R" ? 32 : \
  SVO_MODE == "2048x1080" ? 216 : \
  SVO_MODE == "1152x768R" ? 32 : \
  SVO_MODE == "4096x2160" ? 448 : \
  SVO_MODE == "4096x2160R" ? 32 : \
  SVO_MODE == "800x480" ? 72 : \
  SVO_MODE == "2560x1080R" ? 32 : \
  SVO_MODE == "1440x1080R" ? 32 : \
  SVO_MODE == "854x480" ? 80 : \
  SVO_MODE == "640x480" ? 56 : \
  SVO_MODE == "480x320" ? 40 : \
  SVO_MODE == "1920x1200R" ? 32 : \
  SVO_MODE == "3840x2160" ? 416 : \
  SVO_MODE == "1400x1050" ? 144 : \
  SVO_MODE == "854x480R" ? 32 : \
  SVO_MODE == "1680x1050" ? 176 : \
  SVO_MODE == "320x200R" ? 32 : \
  SVO_MODE == "1920x1080R" ? 32 : \
  SVO_MODE == "1920x1080" ? 200 : \
  SVO_MODE == "2560x1440" ? 272 : \
  SVO_MODE == "1440x900" ? 144 : \
  SVO_MODE == "1024x600" ? 96 : \
  SVO_MODE == "1400x1050R" ? 32 : \
  SVO_MODE == "1366x768" ? 136 : \
  SVO_MODE == "1440x1080" ? 152 : \
  SVO_MODE == "1600x900" ? 160 : \
  SVO_MODE == "64x48T" ? 4 : \
  SVO_MODE == "640x480R" ? 32 : \
  SVO_MODE == "352x288R" ? 32 : \
  SVO_MODE == "1024x768" ? 104 : \
  SVO_MODE == "800x600" ? 80 : \
  SVO_MODE == "1280x960" ? 128 : \
  SVO_MODE == "1024x768R" ? 32 : \
  SVO_MODE == "1280x960R" ? 32 : \
  SVO_MODE == "1600x900R" ? 32 : \
  SVO_MODE == "800x600R" ? 32 : \
  SVO_MODE == "1280x800" ? 128 : \
  SVO_MODE == "384x288" ? 32 : \
  SVO_MODE == "352x288" ? 32 : \
  SVO_MODE == "800x480R" ? 32 : \
  SVO_MODE == "1440x960" ? 144 : \
  SVO_MODE == "3840x2160R" ? 32 : \
  SVO_MODE == "2048x1080R" ? 32 : \
  SVO_MODE == "1280x800R" ? 32 : \
  SVO_MODE == "1366x768R" ? 32 : \
  SVO_MODE == "1600x1200R" ? 32 : \
  SVO_MODE == "2560x1600" ? 272 : \
  SVO_MODE == "1600x1200" ? 168 : \
  SVO_MODE == "320x240" ? 24 : \
  SVO_MODE == "1152x864" ? 120 : \
  SVO_MODE == "1440x960R" ? 32 : \
  SVO_MODE == "2560x1080" ? 272 : \
  SVO_MODE == "1152x768" ? 112 : \
  SVO_MODE == "1280x720" ? 128 : \
  SVO_MODE == "1152x864R" ? 32 : \
  SVO_MODE == "1024x600R" ? 32 : \
  SVO_MODE == "1280x1024" ? 128 : \
  SVO_MODE == "1280x768" ? 128 : \
  SVO_MODE == "1280x720R" ? 32 : \
  SVO_MODE == "2560x1600R" ? 32 : \
  SVO_MODE == "320x240R" ? 32 : \
  'bx; \
localparam SVO_HOR_BACK_PORCH = \
  SVO_MODE == "640x480V" ? 48 : \
  SVO_MODE == "960x540" ? 240 : \
  SVO_MODE == "768x576" ? 104 : \
  SVO_MODE == "1280x854R" ? 80 : \
  SVO_MODE == "2560x2048R" ? 80 : \
  SVO_MODE == "1920x1200" ? 336 : \
  SVO_MODE == "480x320R" ? 80 : \
  SVO_MODE == "1280x768R" ? 80 : \
  SVO_MODE == "2560x1440R" ? 80 : \
  SVO_MODE == "2048x1536" ? 376 : \
  SVO_MODE == "1024x576" ? 136 : \
  SVO_MODE == "320x200" ? 40 : \
  SVO_MODE == "384x288R" ? 80 : \
  SVO_MODE == "1280x1024R" ? 80 : \
  SVO_MODE == "768x576R" ? 80 : \
  SVO_MODE == "2048x1536R" ? 80 : \
  SVO_MODE == "1024x576R" ? 80 : \
  SVO_MODE == "1680x1050R" ? 80 : \
  SVO_MODE == "1280x854" ? 200 : \
  SVO_MODE == "2560x2048" ? 488 : \
  SVO_MODE == "1440x900R" ? 80 : \
  SVO_MODE == "2048x1080" ? 344 : \
  SVO_MODE == "1152x768R" ? 80 : \
  SVO_MODE == "4096x2160" ? 784 : \
  SVO_MODE == "4096x2160R" ? 80 : \
  SVO_MODE == "800x480" ? 96 : \
  SVO_MODE == "2560x1080R" ? 80 : \
  SVO_MODE == "1440x1080R" ? 80 : \
  SVO_MODE == "854x480" ? 104 : \
  SVO_MODE == "640x480" ? 80 : \
  SVO_MODE == "480x320" ? 56 : \
  SVO_MODE == "1920x1200R" ? 80 : \
  SVO_MODE == "3840x2160" ? 736 : \
  SVO_MODE == "1400x1050" ? 232 : \
  SVO_MODE == "854x480R" ? 80 : \
  SVO_MODE == "1680x1050" ? 280 : \
  SVO_MODE == "320x200R" ? 80 : \
  SVO_MODE == "1920x1080R" ? 80 : \
  SVO_MODE == "1920x1080" ? 328 : \
  SVO_MODE == "2560x1440" ? 464 : \
  SVO_MODE == "1440x900" ? 232 : \
  SVO_MODE == "1024x600" ? 144 : \
  SVO_MODE == "1400x1050R" ? 80 : \
  SVO_MODE == "1366x768" ? 208 : \
  SVO_MODE == "1440x1080" ? 240 : \
  SVO_MODE == "1600x900" ? 256 : \
  SVO_MODE == "64x48T" ? 2 : \
  SVO_MODE == "640x480R" ? 80 : \
  SVO_MODE == "352x288R" ? 80 : \
  SVO_MODE == "1024x768" ? 152 : \
  SVO_MODE == "800x600" ? 112 : \
  SVO_MODE == "1280x960" ? 208 : \
  SVO_MODE == "1024x768R" ? 80 : \
  SVO_MODE == "1280x960R" ? 80 : \
  SVO_MODE == "1600x900R" ? 80 : \
  SVO_MODE == "800x600R" ? 80 : \
  SVO_MODE == "1280x800" ? 200 : \
  SVO_MODE == "384x288" ? 48 : \
  SVO_MODE == "352x288" ? 40 : \
  SVO_MODE == "800x480R" ? 80 : \
  SVO_MODE == "1440x960" ? 232 : \
  SVO_MODE == "3840x2160R" ? 80 : \
  SVO_MODE == "2048x1080R" ? 80 : \
  SVO_MODE == "1280x800R" ? 80 : \
  SVO_MODE == "1366x768R" ? 80 : \
  SVO_MODE == "1600x1200R" ? 80 : \
  SVO_MODE == "2560x1600" ? 472 : \
  SVO_MODE == "1600x1200" ? 280 : \
  SVO_MODE == "320x240" ? 40 : \
  SVO_MODE == "1152x864" ? 184 : \
  SVO_MODE == "1440x960R" ? 80 : \
  SVO_MODE == "2560x1080" ? 432 : \
  SVO_MODE == "1152x768" ? 176 : \
  SVO_MODE == "1280x720" ? 192 : \
  SVO_MODE == "1152x864R" ? 80 : \
  SVO_MODE == "1024x600R" ? 80 : \
  SVO_MODE == "1280x1024" ? 216 : \
  SVO_MODE == "1280x768" ? 192 : \
  SVO_MODE == "1280x720R" ? 80 : \
  SVO_MODE == "2560x1600R" ? 80 : \
  SVO_MODE == "320x240R" ? 80 : \
  'bx; \
localparam SVO_VER_FRONT_PORCH = \
  SVO_MODE == "640x480V" ? 10 : \
  SVO_MODE == "960x540" ? 3 : \
  SVO_MODE == "768x576" ? 3 : \
  SVO_MODE == "1280x854R" ? 3 : \
  SVO_MODE == "2560x2048R" ? 3 : \
  SVO_MODE == "1920x1200" ? 3 : \
  SVO_MODE == "480x320R" ? 3 : \
  SVO_MODE == "1280x768R" ? 3 : \
  SVO_MODE == "2560x1440R" ? 3 : \
  SVO_MODE == "2048x1536" ? 3 : \
  SVO_MODE == "1024x576" ? 3 : \
  SVO_MODE == "320x200" ? 3 : \
  SVO_MODE == "384x288R" ? 3 : \
  SVO_MODE == "1280x1024R" ? 3 : \
  SVO_MODE == "768x576R" ? 3 : \
  SVO_MODE == "2048x1536R" ? 3 : \
  SVO_MODE == "1024x576R" ? 3 : \
  SVO_MODE == "1680x1050R" ? 3 : \
  SVO_MODE == "1280x854" ? 3 : \
  SVO_MODE == "2560x2048" ? 3 : \
  SVO_MODE == "1440x900R" ? 3 : \
  SVO_MODE == "2048x1080" ? 3 : \
  SVO_MODE == "1152x768R" ? 3 : \
  SVO_MODE == "4096x2160" ? 3 : \
  SVO_MODE == "4096x2160R" ? 3 : \
  SVO_MODE == "800x480" ? 3 : \
  SVO_MODE == "2560x1080R" ? 3 : \
  SVO_MODE == "1440x1080R" ? 3 : \
  SVO_MODE == "854x480" ? 3 : \
  SVO_MODE == "640x480" ? 3 : \
  SVO_MODE == "480x320" ? 3 : \
  SVO_MODE == "1920x1200R" ? 3 : \
  SVO_MODE == "3840x2160" ? 3 : \
  SVO_MODE == "1400x1050" ? 3 : \
  SVO_MODE == "854x480R" ? 3 : \
  SVO_MODE == "1680x1050" ? 3 : \
  SVO_MODE == "320x200R" ? 3 : \
  SVO_MODE == "1920x1080R" ? 3 : \
  SVO_MODE == "1920x1080" ? 3 : \
  SVO_MODE == "2560x1440" ? 3 : \
  SVO_MODE == "1440x900" ? 3 : \
  SVO_MODE == "1024x600" ? 3 : \
  SVO_MODE == "1400x1050R" ? 3 : \
  SVO_MODE == "1366x768" ? 3 : \
  SVO_MODE == "1440x1080" ? 3 : \
  SVO_MODE == "1600x900" ? 3 : \
  SVO_MODE == "64x48T" ? 1 : \
  SVO_MODE == "640x480R" ? 3 : \
  SVO_MODE == "352x288R" ? 3 : \
  SVO_MODE == "1024x768" ? 3 : \
  SVO_MODE == "800x600" ? 3 : \
  SVO_MODE == "1280x960" ? 3 : \
  SVO_MODE == "1024x768R" ? 3 : \
  SVO_MODE == "1280x960R" ? 3 : \
  SVO_MODE == "1600x900R" ? 3 : \
  SVO_MODE == "800x600R" ? 3 : \
  SVO_MODE == "1280x800" ? 3 : \
  SVO_MODE == "384x288" ? 3 : \
  SVO_MODE == "352x288" ? 3 : \
  SVO_MODE == "800x480R" ? 3 : \
  SVO_MODE == "1440x960" ? 3 : \
  SVO_MODE == "3840x2160R" ? 3 : \
  SVO_MODE == "2048x1080R" ? 3 : \
  SVO_MODE == "1280x800R" ? 3 : \
  SVO_MODE == "1366x768R" ? 3 : \
  SVO_MODE == "1600x1200R" ? 3 : \
  SVO_MODE == "2560x1600" ? 3 : \
  SVO_MODE == "1600x1200" ? 3 : \
  SVO_MODE == "320x240" ? 3 : \
  SVO_MODE == "1152x864" ? 3 : \
  SVO_MODE == "1440x960R" ? 3 : \
  SVO_MODE == "2560x1080" ? 3 : \
  SVO_MODE == "1152x768" ? 3 : \
  SVO_MODE == "1280x720" ? 3 : \
  SVO_MODE == "1152x864R" ? 3 : \
  SVO_MODE == "1024x600R" ? 3 : \
  SVO_MODE == "1280x1024" ? 3 : \
  SVO_MODE == "1280x768" ? 3 : \
  SVO_MODE == "1280x720R" ? 3 : \
  SVO_MODE == "2560x1600R" ? 3 : \
  SVO_MODE == "320x240R" ? 3 : \
  'bx; \
localparam SVO_VER_SYNC = \
  SVO_MODE == "640x480V" ? 2 : \
  SVO_MODE == "960x540" ? 5 : \
  SVO_MODE == "768x576" ? 4 : \
  SVO_MODE == "1280x854R" ? 10 : \
  SVO_MODE == "2560x2048R" ? 7 : \
  SVO_MODE == "1920x1200" ? 6 : \
  SVO_MODE == "480x320R" ? 10 : \
  SVO_MODE == "1280x768R" ? 10 : \
  SVO_MODE == "2560x1440R" ? 5 : \
  SVO_MODE == "2048x1536" ? 4 : \
  SVO_MODE == "1024x576" ? 5 : \
  SVO_MODE == "320x200" ? 6 : \
  SVO_MODE == "384x288R" ? 4 : \
  SVO_MODE == "1280x1024R" ? 7 : \
  SVO_MODE == "768x576R" ? 4 : \
  SVO_MODE == "2048x1536R" ? 4 : \
  SVO_MODE == "1024x576R" ? 5 : \
  SVO_MODE == "1680x1050R" ? 6 : \
  SVO_MODE == "1280x854" ? 10 : \
  SVO_MODE == "2560x2048" ? 7 : \
  SVO_MODE == "1440x900R" ? 6 : \
  SVO_MODE == "2048x1080" ? 10 : \
  SVO_MODE == "1152x768R" ? 10 : \
  SVO_MODE == "4096x2160" ? 10 : \
  SVO_MODE == "4096x2160R" ? 10 : \
  SVO_MODE == "800x480" ? 10 : \
  SVO_MODE == "2560x1080R" ? 10 : \
  SVO_MODE == "1440x1080R" ? 4 : \
  SVO_MODE == "854x480" ? 10 : \
  SVO_MODE == "640x480" ? 4 : \
  SVO_MODE == "480x320" ? 10 : \
  SVO_MODE == "1920x1200R" ? 6 : \
  SVO_MODE == "3840x2160" ? 5 : \
  SVO_MODE == "1400x1050" ? 4 : \
  SVO_MODE == "854x480R" ? 10 : \
  SVO_MODE == "1680x1050" ? 6 : \
  SVO_MODE == "320x200R" ? 6 : \
  SVO_MODE == "1920x1080R" ? 5 : \
  SVO_MODE == "1920x1080" ? 5 : \
  SVO_MODE == "2560x1440" ? 5 : \
  SVO_MODE == "1440x900" ? 6 : \
  SVO_MODE == "1024x600" ? 10 : \
  SVO_MODE == "1400x1050R" ? 4 : \
  SVO_MODE == "1366x768" ? 10 : \
  SVO_MODE == "1440x1080" ? 4 : \
  SVO_MODE == "1600x900" ? 5 : \
  SVO_MODE == "64x48T" ? 2 : \
  SVO_MODE == "640x480R" ? 4 : \
  SVO_MODE == "352x288R" ? 10 : \
  SVO_MODE == "1024x768" ? 4 : \
  SVO_MODE == "800x600" ? 4 : \
  SVO_MODE == "1280x960" ? 4 : \
  SVO_MODE == "1024x768R" ? 4 : \
  SVO_MODE == "1280x960R" ? 4 : \
  SVO_MODE == "1600x900R" ? 5 : \
  SVO_MODE == "800x600R" ? 4 : \
  SVO_MODE == "1280x800" ? 6 : \
  SVO_MODE == "384x288" ? 4 : \
  SVO_MODE == "352x288" ? 10 : \
  SVO_MODE == "800x480R" ? 10 : \
  SVO_MODE == "1440x960" ? 10 : \
  SVO_MODE == "3840x2160R" ? 5 : \
  SVO_MODE == "2048x1080R" ? 10 : \
  SVO_MODE == "1280x800R" ? 6 : \
  SVO_MODE == "1366x768R" ? 10 : \
  SVO_MODE == "1600x1200R" ? 4 : \
  SVO_MODE == "2560x1600" ? 6 : \
  SVO_MODE == "1600x1200" ? 4 : \
  SVO_MODE == "320x240" ? 4 : \
  SVO_MODE == "1152x864" ? 4 : \
  SVO_MODE == "1440x960R" ? 10 : \
  SVO_MODE == "2560x1080" ? 10 : \
  SVO_MODE == "1152x768" ? 10 : \
  SVO_MODE == "1280x720" ? 5 : \
  SVO_MODE == "1152x864R" ? 4 : \
  SVO_MODE == "1024x600R" ? 10 : \
  SVO_MODE == "1280x1024" ? 7 : \
  SVO_MODE == "1280x768" ? 10 : \
  SVO_MODE == "1280x720R" ? 5 : \
  SVO_MODE == "2560x1600R" ? 6 : \
  SVO_MODE == "320x240R" ? 4 : \
  'bx; \
localparam SVO_VER_BACK_PORCH = \
  SVO_MODE == "640x480V" ? 33 : \
  SVO_MODE == "960x540" ? 77 : \
  SVO_MODE == "768x576" ? 16 : \
  SVO_MODE == "1280x854R" ? 12 : \
  SVO_MODE == "2560x2048R" ? 49 : \
  SVO_MODE == "1920x1200" ? 36 : \
  SVO_MODE == "480x320R" ? 6 : \
  SVO_MODE == "1280x768R" ? 9 : \
  SVO_MODE == "2560x1440R" ? 33 : \
  SVO_MODE == "2048x1536" ? 49 : \
  SVO_MODE == "1024x576" ? 15 : \
  SVO_MODE == "320x200" ? 3 : \
  SVO_MODE == "384x288R" ? 6 : \
  SVO_MODE == "1280x1024R" ? 20 : \
  SVO_MODE == "768x576R" ? 10 : \
  SVO_MODE == "2048x1536R" ? 37 : \
  SVO_MODE == "1024x576R" ? 9 : \
  SVO_MODE == "1680x1050R" ? 21 : \
  SVO_MODE == "1280x854" ? 20 : \
  SVO_MODE == "2560x2048" ? 63 : \
  SVO_MODE == "1440x900R" ? 17 : \
  SVO_MODE == "2048x1080" ? 27 : \
  SVO_MODE == "1152x768R" ? 9 : \
  SVO_MODE == "4096x2160" ? 64 : \
  SVO_MODE == "4096x2160R" ? 49 : \
  SVO_MODE == "800x480" ? 7 : \
  SVO_MODE == "2560x1080R" ? 18 : \
  SVO_MODE == "1440x1080R" ? 24 : \
  SVO_MODE == "854x480" ? 7 : \
  SVO_MODE == "640x480" ? 13 : \
  SVO_MODE == "480x320" ? 3 : \
  SVO_MODE == "1920x1200R" ? 26 : \
  SVO_MODE == "3840x2160" ? 69 : \
  SVO_MODE == "1400x1050" ? 32 : \
  SVO_MODE == "854x480R" ? 6 : \
  SVO_MODE == "1680x1050" ? 30 : \
  SVO_MODE == "320x200R" ? 6 : \
  SVO_MODE == "1920x1080R" ? 23 : \
  SVO_MODE == "1920x1080" ? 32 : \
  SVO_MODE == "2560x1440" ? 45 : \
  SVO_MODE == "1440x900" ? 25 : \
  SVO_MODE == "1024x600" ? 11 : \
  SVO_MODE == "1400x1050R" ? 23 : \
  SVO_MODE == "1366x768" ? 17 : \
  SVO_MODE == "1440x1080" ? 33 : \
  SVO_MODE == "1600x900" ? 26 : \
  SVO_MODE == "64x48T" ? 1 : \
  SVO_MODE == "640x480R" ? 7 : \
  SVO_MODE == "352x288R" ? 6 : \
  SVO_MODE == "1024x768" ? 23 : \
  SVO_MODE == "800x600" ? 17 : \
  SVO_MODE == "1280x960" ? 29 : \
  SVO_MODE == "1024x768R" ? 15 : \
  SVO_MODE == "1280x960R" ? 21 : \
  SVO_MODE == "1600x900R" ? 18 : \
  SVO_MODE == "800x600R" ? 11 : \
  SVO_MODE == "1280x800" ? 22 : \
  SVO_MODE == "384x288" ? 6 : \
  SVO_MODE == "352x288" ? 3 : \
  SVO_MODE == "800x480R" ? 6 : \
  SVO_MODE == "1440x960" ? 23 : \
  SVO_MODE == "3840x2160R" ? 54 : \
  SVO_MODE == "2048x1080R" ? 18 : \
  SVO_MODE == "1280x800R" ? 14 : \
  SVO_MODE == "1366x768R" ? 9 : \
  SVO_MODE == "1600x1200R" ? 28 : \
  SVO_MODE == "2560x1600" ? 49 : \
  SVO_MODE == "1600x1200" ? 38 : \
  SVO_MODE == "320x240" ? 5 : \
  SVO_MODE == "1152x864" ? 26 : \
  SVO_MODE == "1440x960R" ? 15 : \
  SVO_MODE == "2560x1080" ? 27 : \
  SVO_MODE == "1152x768" ? 17 : \
  SVO_MODE == "1280x720" ? 20 : \
  SVO_MODE == "1152x864R" ? 18 : \
  SVO_MODE == "1024x600R" ? 6 : \
  SVO_MODE == "1280x1024" ? 29 : \
  SVO_MODE == "1280x768" ? 17 : \
  SVO_MODE == "1280x720R" ? 13 : \
  SVO_MODE == "2560x1600R" ? 37 : \
  SVO_MODE == "320x240R" ? 6 : \
  'bx; \
function integer svo_clog2; \
  input integer v; \
  begin \
    if (v > 0) \
      v = v - 1; \
    svo_clog2 = 0; \
    while (v != 0) begin \
      v = v >> 1; \
      svo_clog2 = svo_clog2 + 1; \
    end \
  end \
endfunction \
function integer svo_max; \
  input integer a, b; \
  begin \
    svo_max = a > b ? a : b; \
  end \
endfunction \
function [SVO_BITS_PER_RED-1:0] svo_r; \
  input [SVO_BITS_PER_PIXEL-1:0] rgba; \
  svo_r = rgba[0 +: SVO_BITS_PER_RED]; \
endfunction \
function [SVO_BITS_PER_RED-1:0] svo_g; \
  input [SVO_BITS_PER_PIXEL-1:0] rgba; \
  svo_g = rgba[SVO_BITS_PER_RED +: SVO_BITS_PER_GREEN]; \
endfunction \
function [SVO_BITS_PER_RED-1:0] svo_b; \
  input [SVO_BITS_PER_PIXEL-1:0] rgba; \
  svo_b = rgba[SVO_BITS_PER_RED + SVO_BITS_PER_GREEN +: SVO_BITS_PER_BLUE]; \
endfunction \
function [SVO_BITS_PER_RED-1:0] svo_a; \
  input [SVO_BITS_PER_PIXEL-1:0] rgba; \
  svo_a = rgba[SVO_BITS_PER_ALPHA ? SVO_BITS_PER_RED + SVO_BITS_PER_GREEN + SVO_BITS_PER_BLUE : 0 +: svo_max(SVO_BITS_PER_ALPHA, 1)]; \
endfunction \
function [SVO_BITS_PER_PIXEL-1:0] svo_rgba; \
  input [SVO_BITS_PER_RED-1:0] r; \
  input [SVO_BITS_PER_GREEN-1:0] g; \
  input [SVO_BITS_PER_BLUE-1:0] b; \
  input [SVO_BITS_PER_ALPHA-1:0] a; \
  svo_rgba = {a, b, g, r}; \
endfunction \
localparam SVO_HOR_TOTAL = SVO_HOR_FRONT_PORCH + SVO_HOR_SYNC + SVO_HOR_BACK_PORCH + SVO_HOR_PIXELS; \
localparam SVO_VER_TOTAL = SVO_VER_FRONT_PORCH + SVO_VER_SYNC + SVO_VER_BACK_PORCH + SVO_VER_PIXELS; \
initial if (SVO_HOR_PIXELS === 'bx) begin $display("Invalid SVO_MODE value: %0s", SVO_MODE); $finish; end

