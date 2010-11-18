pushd site-lisp
curl https://github.com/purcell/emacs.d/raw/master/site-lisp/flymake-ruby/flymake-ruby.el > flymake-ruby.el

# autocomplete
curl https://github.com/m2ym/auto-complete/raw/master/auto-complete.el > auto-complete.el
curl https://github.com/m2ym/auto-complete/raw/master/auto-complete-config.el > auto-complete-config.el
curl https://github.com/m2ym/auto-complete/raw/master/popup.el > popup.el
curl https://github.com/m2ym/auto-complete/raw/master/fuzzy.el > fuzzy.el

curl https://github.com/brianjcj/auto-complete-clang/raw/master/auto-complete-clang.el > auto-complete-clang.el
svn cat http://yasnippet.googlecode.com/svn/trunk/yasnippet.el > yasnippet.el
svn cat http://yasnippet.googlecode.com/svn/trunk/dropdown-list.el > dropdown-list.el
popd

