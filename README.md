getnoo-tinyos-overlay
=====================

TinyOS overlay for Gentoo

Notes:
1. I'm currently only testing this with avr and msp430 toolchains.
2. This overlay only installs tinyos-tools and nesc. The toolchains will be installed via gentoo's crossdev (see instructions below)

Instructions (roughly follows: http://docs.tinyos.net/tinywiki/index.php/Manual_installation_using_RPM_packages):

1. If you are not just running TOSSIM, install crossdev if you haven't yet.
2. Install msp430 toolchain if you are working with msp430-based platform: crossdev --target msp430
3. If you want avr toolchain, you first need to patch crossdev to make it support multilib (https://bugs.gentoo.org/show_bug.cgi?id=147155#c72). Then emerge avr toolchain (use gcc 4.1.2 as this is supported by TinyOS): crossdev --target avr --gcc 4.1.2
3. Add tinyos overlay from this package (http://wiki.gentoo.org/wiki/Layman#Adding_custom_overlays)
4. Install tinyos-tools (it will also pull nesc): emerge tinyos-tools
5. Install the TinyOS source tree as from the official web site
