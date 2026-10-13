#!/bin/zsh
# 발표용 실행 — 음악 자동 재생이 막히지 않게 크롬을 '자동재생 허용' 설정으로 따로 띄워 인트로를 전체 화면으로 연다.
# (평소 쓰는 크롬과 섞이지 않게 별도 프로필을 쓴다. 이 파일과 intro.html 은 같은 폴더에 둔다)
HERE="${0:A:h}"
FILE="$HERE/intro.html"
[ -f "$FILE" ] || FILE="$HERE/dist/intro.html"
PROFILE="$HOME/Library/Application Support/oypp-intro-chrome"
open -na "Google Chrome" --args --user-data-dir="$PROFILE" --autoplay-policy=no-user-gesture-required --start-fullscreen --no-first-run --no-default-browser-check --disable-features=Translate "file://$FILE"
