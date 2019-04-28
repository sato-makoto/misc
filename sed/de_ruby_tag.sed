#!/usr/bin/env sed
# remove ruby tag from aozora contents

s@</rb><rp>（</rp><rt>@_____@g
s@</rt><rp>）@_____@g
s@_____[^_]\+_____@@g
s@<ruby><rb>@@g
s@</rp></ruby>@@g
