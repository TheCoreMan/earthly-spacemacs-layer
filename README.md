# earthly-spacemacs-layer

Syntax highlight for Earthfiles in Spacemacs

![earthly emacs syntax highlighting](https://user-images.githubusercontent.com/6576891/124236488-28ce2600-db1f-11eb-86ca-3b3b53142d2a.png)

## How to use

Evaluate the `earthly-mode/syntax-highlighter.el` file in Emacs (`, e b`)

Then open an Earthly file and `SPC earthly-mode RET`.

## Plan

Write a syntax highlighter + auto-completion layer for Earthfiles for Spacemacs.

### Features (in order of importance)

- [x] Syntax highlighting
- [ ] auto-completion (including target names)
- [ ] Built in pop-up docs
- [ ] Jump to target (bonus points for other files) with `SPC j`
- [ ] call target from within file `, e t` (, evaluate target) 
- [ ] maybe color successful targets/cached targets? Seems hard

## References

- https://develop.spacemacs.org/doc/LAYERS.html
- https://github.com/earthly/earthly.vim/blob/main/syntax/Earthfile.vim
- https://medium.com/@cgrinaldi/creating-a-spacemacs-layer-from-an-existing-emacs-package-efd474bb422d
- https://blog.lord.geek.nz/2019/04/25/spacemacs-custom-package-for-the-hasty/
- https://github.com/earthly/earthly/issues/378
- https://earthlycommunity.slack.com/archives/C01DL2928RM/p1624644583159300
