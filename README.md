#crystal-imagemagick-7-docker

Built for: [gik](github.com/jackharrhy/gik), which uses [this](https://github.com/blocknotes/magickwand-crystal) crystal shard that is currently built for an older imagemagick 7 release

Base docker image: `crystal:0.34.0-build`

Deps for building imagemagick:

```
git
libltdl-dev
autoconf
```

Deps for imagemagick features:

```
libpng-dev # reading / writing PNGs
libjpeg-dev # reading / writing JPGs
liblqr-1-0-dev # for liquid rescale
```

`imagemagick` pinned at: `7.0.8-66`
