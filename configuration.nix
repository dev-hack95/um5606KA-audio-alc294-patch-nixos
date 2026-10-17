hardware.firmware = [
    (pkgs.writeTextDir "lib/firmware/alc294-um5606ka.fw" ''
      [codec]
      0x10ec0294 0x10431264 0

      [pincfg]
      0x12 0x411111f0
    '')
  ];
  boot.extraModprobeConfig = ''
    options snd-hda-intel patch=alc294-um5606ka.fw,alc294-um5606ka.fw
  '';
