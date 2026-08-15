#!/bin/bash

set -u

echo 'Configuring Rectangle shortcuts...'

# 左半分: Control+Shift+←
defaults write com.knollsoft.Rectangle leftHalf -dict keyCode -int 123 modifierFlags -int 393216

# 右半分: Control+Shift+→
defaults write com.knollsoft.Rectangle rightHalf -dict keyCode -int 124 modifierFlags -int 393216

# ショートカット連続実行時の挙動: resize (Spectacle方式)
# 同じショートカットを繰り返すと 1/2 → 2/3 → 1/3 の3段階でウインドウ幅が切り替わる
defaults write com.knollsoft.Rectangle subsequentExecutionMode -int 0

echo 'Done! Restarting Rectangle to apply changes...'
killall Rectangle 2>/dev/null
open -a Rectangle
