# Smart backspace
[![MELPA](https://melpa.org/packages/smart-backspace-badge.svg)](https://melpa.org/#/smart-backspace)
[![Emacs](https://img.shields.io/badge/Emacs-25-8e44bd.svg)](https://www.gnu.org/software/emacs/)

A simple package to enable intellij like backspace in Emacs.

## How it works
`smart-backspace` delete white spaces to previous line indentation.
```
class Some {
  
  
  |void someFunc() {
  ↑ carret here
  }
}
```
↓ press `smart-backspace` command once
```
class Some {
  
  |void someFunc() {
  }
}
```
↓ press `smart-backspace` command again
```
class Some {
  |void someFunc() {
  }
}
```

## Installation
package can be available in melpa. just `M-x` `package-install` `smart-backspace` and bind `smart-backspace`
#### set keybinds to your favorite key.
```
(require 'smart-backspace)
(global-set-key [?\C-?] 'smart-backspace)
```
#### for evil users
```
(require 'smart-backspace)
(define-key evil-insert-state-map [?\C-?] 'smart-backspace)
```
