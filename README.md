# Smart backspace
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

## Usage
#### set keybinds to your favorite key.
`(global-set-key [?\C-?] 'smart-backspace)`
#### for evil users
`(define-key evil-insert-state-map [?\C-?] 'smart-backspace)`
