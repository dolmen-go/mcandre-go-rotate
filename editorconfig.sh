#!/bin/sh
exec find . \
    \( \
        -wholename '*/bin/*' -o \
        -wholename '*/ts/*.js' -o \
        -wholename '*/dash/lib/*' -o \
        -wholename '*/ash/lib/*' -o \
        -wholename '*/.idea/*' -o \
        -wholename '*/bower_components/*' -o \
        -wholename '*/vendor/*' -o \
        -wholename '*/*.xcodeproj/*' -o \
        -wholename '*/*.dSYM/*' -o \
        -wholename '*/build/*' -o \
        -wholename '*/dist/*' -o \
        -wholename '*/*.app/*' -o \
        -wholename '*/perl/Makefile' -o \
        -wholename '*/CMakeFiles/*' -o \
        -wholename '*/tmp/*' -o \
        -wholename '*/.git/*' -o \
        -wholename '*/node_modules/*' -o \
        -wholename '*/.cabal/*' -o \
        -name '*.bc' -o \
        -name '*.aux' -o \
        -name '*.jad' -o \
        -name '*.m' -o \
        -name '*.snu' -o \
        -name '*.txt' -o \
        -name '*.md' -o \
        -name '*.rkt' -o \
        -name '*.clj' -o \
        -name '*.lsp' -o \
        -name '*.pdf' -o \
        -name '*.ps' -o \
        -name '*.iml' -o \
        -name '*.ser' -o \
        -name '*.[ps]k' -o \
        -name '*.flip' -o \
        -name '*.db' -o \
        -name '*.log' -o \
        -name '*.scpt' -o \
        -name '*.cmake' -o \
        -name '*.lock' -o \
        -name '*.cm[io]' -o \
        -name '*.hi' -o \
        -name '*.swiftdoc' -o \
        -name '*.swiftmodule' -o \
        -name '*.rlib' -o \
        -name '*.dylib' -o \
        -name '*.so' -o \
        -name '*.o' -o \
        -name '*.beam' -o \
        -name '*.dump' -o \
        -name '*.pyc' -o \
        -name '*.jar' -o \
        -name '*.class' -o \
        -name '*.bin' -o \
        -name '*.ttf' -o \
        -name '*.plist' -o \
        -name '*.dot' -o \
        -name '*.wav' -o \
        -name '*.jpeg' -o \
        -name '*.jpg' -o \
        -name '*.ico' -o \
        -name '*.png' -o \
        -name '*.gif' -o \
        -name .gitmodules -o \
        -name .DS_Store -o \
        -name Thumbs.db -o \
        -name .yaws \
    \) \
    -prune -o \
    -type f \
    -print | \
        xargs -n 100 node_modules/.bin/editorconfig-tools check
