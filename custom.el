(put 'upcase-region 'disabled nil)
(put 'scroll-left 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'downcase-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-highlight-first t)
 '(avy-keys
	 '(97 117 105 101 121 120 111 119 98 110 102 112 107 116 115 114 113 100 108 106 109 99 103 104 40 41 91 93 60 62 44 59 46 58))
 '(avy-style 'at-full)
 '(blink-cursor-mode nil)
 '(csv-separators '(","))
 '(custom-safe-themes
	 '("9b2ada0143ab724bccc1b8428b05b4dd4fac9aa8cff0e6809c1202c3535dfbfc" "93dd026ed6aec3aaaeeb6213878d541a1e48b9664b39cf3515cfcbf4240e2dc6" "fa171b1bb4b86166a0ce7fddadc83f1560636674c237523187d7f9b2dfa13e6d" "116fb29183cb94e38c278adb4a97adbed069531e2e086c129e8d504f68e91121" "6885074d9a1bb6f993601eace73ee9ccb98e156c13730d12c06a4ac7c099a18f" "65c2dcb40692558faee0458857f37636256489227c89d4cd68428429cd715f62" "e28400109a6e2873f6a0b2c455682f3ec14f8f150bbc29395c4ec21480ddba6b" "f78bea3b4617dab3cceea2de6c745d88812bb3b2c4eebc54b9c8480b16aee6c8" "3d7ec7a899115d701308273d581f79df964ba6ef699c99beed6a35ccd7c8c991" "4311d72ba95f7f5b3614dd8150aeef1af3db33b2421ad3313a80744282b1b1de" "dfd8aabfeab6e905bb6a22a3599a084189e271190581141b19e342b72d88adb9" "46cf42de298d0f2735e4aa9c1456d4a11c8e2ed12a730ff82899a63516e5ec21" "d91c0962fe87a7074ad179904070f9f9ba0cfaa3aa5c344a2dbb8fe909d19921" "ce40328ceef8a55a28bae159decee47e2829c9ee2c2efd64f00d92e34f0faf94" "b29c3171405f85494cd3d8b0750ce1a756f68699dbacfb16dcce09d518384736" "f26b443ad44a8dd675cbb5e980ebdb976d1fc4c6ac4f8ead26e97cf002f1b82f" "ee019b1911067a2821f0b464cd812429c9f3fee7911607fdb75772d4fd112b8b" "2c8153a575448e32783dfc09c4b5df6b55491a39e0d421cee4e52403cc54043f" "5f2e1df84ed5431c2804dae207563f094c5171bc5ce4fba6cae4581b171de754" "d529901fc66bf69b2577f9015891d9edd811bf92264af8f974da25ebbfe73de2" "d06d2038c1b53429345db231b931ead83023012bcc1262527a1fdd8f039ef1eb" "a66d72ca23f7e074d3aa567f37ced6d9e2ffcbec4fcda10036cb1b27a56dc472" "2205e02bc2c539fd3913870653623feca7ae38a2afb97450eb5a0e4e027bb7d0" "f04d2491af39e98606d6fa089d6847343d2df6fcb3e657ab6df5ebfb0a02c6be" "06f6402805de7d71dd2a1d0fdba1cde4804cc56a3a1d2d3d3e567d8d672f70ff" "fcf19da0536bc5bf32f7e17174c91ebeffe753a3fc45b073d88431fd9f5b1350" "281f1c49d9c103d1b3945b70584a2dc38c4c9c3bb4616e9e943eb69bb3b0566d" "940b01cb56a463ad434c3e0929dcdb766c74608cedbc5cfb2c2ff9041eb47f9f" "2fcf651a52538e29750ad3779138e6cf5e23a61b87082bf0246ae6a169f4ec28" "f5745ff4da99a6c32be38331de798d70faede5c3a340080e700224f8f32c64be" "79297901cd42aafc9b8510320c668fae16ec2b80ba54f3a8956e1ea07ca3fdb9" "e53aea7eeca563fb4dbe7a30d649f9420e73384c29fb53ccaf44e236e3b2f8cd" "aae313ca5dae0379d80bdd92f35f21368dba201e8dcf6121381124b5ff52a895" "ec8c4a4418f297b812369d2fa7b95ff50f2c086d4af812de6784b508e6b6edbf" "2dac0b1600bdd0b8c2290d25067bef1be4201b72f00666650f2006511db95959" "6b615642e005621c22d1ea9efb856e92a1058fa4192548ae18e2a6b47b4c7843" "2d4d922b85b23f5bfdcdb9fea37f8491c1a3d6722fc592e3162a64776a3f71a8" "0aa0e946f7e5332664c9f939834973ea4650f746ddeea91be31042def0d076a1" "fa87b5feb7ed835ec5a5c0df2ab378d43dc86b1ffa57536a440303adac45521e" "feeb3d1a593fa471a81d5a0439035b68110311b88ac357fc93020f07173e3df4" "d0f78dd9d8be86e0540a214f01a5798975712e43cb6746fa7f55ffa331a77e8f" "191113fc9c4a70e9fd0106ff12c3525945d581e65d535f64e19b8f60b864c0ce" "c88fd8b3370cb9112eb0acdbe67dc3eb34095f6ffb6f354b4d704eab3bdcb689" "89df138b8bc9a9888d87f09de2587398ec41e3fe72948dec7aee15006598c6d4" "89512a51a997cb5cd2be2d15b6e4af1312896676ec4c4274f5e61b5add8a6ad3" "96a6429fb6f4f0761dd488fa87cbf92efa6222b46b34e80670fb102034764ddd" "57b882a7b648c2e88fbf9f3a8ae315eb2a57ac57ec1d9c48d27d2fae5b613bb4" "2afe4ce20ba4ac678d029338dfe5c1d022f45a0ead09a05208b80f592e0b8a9c" "c8f4c15b0fb34989a117a5feafb68a36536561c34633e24d8d77849c2fa7b611" "bbe7a1f12b86919132ea6ce041ca96e703dc847b101a459895aa730eacf1c5e5" "90b34a5e785d5d7f6a55572e0cb0dcee5d29c58d6da47eef3ca8756bb90e663f" "9dfa78c5c553e2739aad166d74fea2a0ff555c54cee2479ef870c3eaa2ed6f77" "197e4ec9990c5b050dd67646b33dcefb1b705df4940ef5eb9c90e164124f3115" "56a5f946fc9231d0ad4b9f452bc48a081cda0ec191a67f3d96df732a7b91a6ec" "397467cfbda836153c8b10aae745d108c123bf3202d70c3c049d34f9cbaa6868" "221f206ebed66bb5a3ee6983337b4b515b0ec30cb8794a9bd57988deb2fc4d35" "48a90021ca7251ee5066bca2b4a158a6f0cbc8f8442f27b75fd10b5273713c7f" "dcc8f7cac499e2774099f62fb71251addd1aaa7cfc7ad5a3f40bbab11a0e5785" "222349aec45234f053d8a8bb9266c7dc2b8a200742e8c58178e943c9739866a2" "0c213c5e36f98c5ffb991e43c9418332a598321f6afd1fc5a5082b93515d63cb" "a39102a2f96bb447f23a15e6b06fd662df5fb7bdf3bc891b9cf548b9d78c3fca" "98b1cbbd21f3983715bb054fe238d342748f8e176bf46dec86a23442cbf1f138" "b13e77d0f669efabf22a03c1d315d4b878404a7f575eac89394c811e613f8ef6" "0dee439038e2347abd40d2ca5b20bb6fe3f0967404314e335019d80e508cb1ac" "abaa2baa1b5154b0b940488c25b224c334906c8699c248747430bb60b332893e" "cd5dc58b9bae63d04ca086d99dd2ec1a04d1fd55e1de55272118a8408cd52a3e" "85fbdd05611837372390ea4f0ee76dd330bcf95c7bbca565859ed393cba27345" "178fa0264f94ed27f97ecd7ed64d552acbf57777cc51cee00f61312127319cbf" "aa597472c07ee2431f577db21722371a5880c93229300b9d45de7f0e449e1959" "c21c51111b025e4a799d401eaf9361101b4e8769c418cdf33d4fdc5b53d7160b" "adeeb613a4d91a2206792fc76853a1f2a8872c83dd14e1c386b00a80b6444e42" "0f45a5b98448ffea2683380d57fe3ce4c34dd36cf812fffd22081b5afff17c91" "7a41b98b948e493acc1a159efe4d46f650b9dd3db9c7166ddc777fd74166da9e" "51841ec8187c4428cc3bcd3f030316e9006e3ca860e5500d20e2fea552cd954e" "725807af20ac4aeb7ab927ba6b90c6acb4164af5486d86ccd9b735a6e14bd6f4" "bdef7a5ab46c11ee455e3988ce28d3252469b15623426503332d814e0dada1ee" "2f62ae6de2195950ee2f89068cb4edac7190906be61b553bb3ea268b9ce11a05" "42677592d053415a8537164b639058f5341588d26fccce2c16ef7a17e175aee1" "e90d4a6d51303430a20a4b7f8780ae80aaf22c0c293f19ee795830939c0e7a14" "ec7019b4041639cc8a4dc5a081e81bafe7de7a868ed455a3d127f19386dc0094" "15a1e0fde39c5e3bf2e024e1e4896bad68527cf1c44aaa8982da53378192c6b7" "fa0f866c53dff7e3230dfe5f41b222f82cd3860f5cd2ba287f9ba5127c059412" "217ffc59238263141bdd5f9ce1fa1adf16b232e4660b30a2f2c34aed70401012" "a0c304ef35c8434b19af8d35f6521f3e631a9245f28ff60ebd0f449957467515" "16dc7bd7f4f20b02a293dd2885cc52b5110edf5e3e73ad7939307fd27928e317" "11873075abbdd054bd9a5ef74ae9495e20c641cecd6cd5b478f72b143a4c8a10" "b10c5e10f3e38a6fd568820f442ca0ef3e5174fd29b7d8df5dd36ed065963f4b" "858a1eb813a3b85fedaaaa679cb7ab4c495606c45de04a1a3377fcf9654de8ad" "5ad49fb04e2283b3dbfb6f48cff8eb2c88d7ee51bd1ffcfd8757d7b2ce833b83" "5d6a2ac86e9c3f38c683188bc81509cd96fa8449342ce1ef8aeb34b057a1e585" "845bcb797aa2a53c059e7028ec80219f1fe74111bb3c84758e3e533fee4e8ffa" "00e58b39326bf3e690610438343908d8c654e840c2e8db9b678cc5447ef015ca" "5e696ce6f8b322434db05ed097a83c9f5e4b11a430be20b54d1e1f62a76f6028" "fbf02ac5cca566c3d72ebb5764d4971c3ee0bb7f504f2e19c1fd22631e0b6869" "a962eeab8f1872661d787a51356a15d8863653357951b5a4baaf3f5c4c1a961d" "7d39e5566e5b154f590c3f0a85265e90f5b8a3f970f52e5a19eb08cb5aae79c4" "a84c8dc7a6671d455d67e5611d9750f6201fbc0a568f00a8ba88b61230a0639e" "9162836d89af78612f73fa469a6143a0c020c49f8c6434a1536caabe92fbd94d" "f63daa8afeebc3927eedd3efca97d32a23e90f9718ceafea5683c9e98303e2b1" "1ae0623e065c236c7c9fcb99a1e629996a9ea9d23f18967eb63619e0fbd5eaa3" "2a2f62f4a4babc5614fdba948bcc7c95f5def1e55fca86fea3d09a9d334c861c" "faa55506de9ea3dd1a0b0ea308d85327a0dd3bfb43b9d6ff0eba96ace1437832" "c366a40da4ca2e468bef8242b5faf4bbee78fdda004ae6b2f08e9a2930df66df" "874be33c5ead70bbda2b210562cafd4141609fb50575ef4e72b199d037e4dcb0" "879ed1d8ec2ff5bc7989003287386d2d8fb7c063d456488fdba4c598736c75b4" "7eae95e10280708fe61a4ee7056c16a0c5dfc46da4da0a014adf098f312a29fd" "051f21fc3d19d107a70864237fd6ec0b9eecedc425aa129229d0f05e13ed8287" "da278bb1e82d6b269d34b940fd12a55522e6c2af525cc23f6dad837ed702400d" "14ec8ed9465ff3d38d41ba31b2dbfba05d4a1686f904da7f602a05361e91dea8" "3462bd9cdd5320215af14ca19bbaf965624ed52d36c6d3a0fad7a692bb8196f5" "e244eeb7729e868a99e36055b374927566d9868bee0aacc763209e368a1ee80a" "5fa0d6de763244a77e875a05c88f343bf7b4086c4f0dedc24f5126180cd08e50" "740688f70ab09d0328f581107b0aad74eff07d764fd54e4d2ac13d4aafffc6cd" "f623f39b244a237c677450d942ba3940f99647a2bcc304690acaef2c1c53fa1e" "b1e2b503bcc1420058d20baa3dd95cd4c69458ee7a599eb2b3602b0c49c77058" "42080cb4231b1e760bec78ff80e32e7e85a5e26f8a1f4f0b0e4d35a73555e1fe" "3f3fd62bd5d83a3314dc720b3901de56cee660d12e33d5f0dea6bf5e0b310510" "0dc4a16e2b01263b5e97f3a44626a67b58d5d730951313f5ccedef0151705ac1" "b517a3d7924a3f45cd4dd7d943f5ef836ba05a61e952766495bde9a403ab1889" "f50902c7b36e9da537552a46a12029ef7f97a181a137745ab98f70a2e9a42391" "05a14c227e3beaf24b98a06026444fd5533c96a57a1ecf7bffdcd44a07725531" "29ce8d385e5bada88d23fcef6df4744fc2fb31a168484c6b3a5a8049c548325b" "7827d3c36b342e4e87a055ca4e7e62f2c07da69ca6452aef67af24099fc6f95b" "fc12cb6a6cc6dd8b9729f961e9d7e5b3f8b2fbf0de285b599440f2700fc85743" "b6ad19ed318129c91d51c2a0ef5b6924a0ef6b1e85a73cf397d38c45035162d8" "228e9b2c8307c30b09624b509115e5c841f19ac2b2a076485cb2fc526b9dd33f" "c556695240cbf6468c064e73246b56f2c873fca5e9f27a6404e0b4f2bb803d7c" "7dd20d07698a08871002668be13e105642bf0600b23011a2f5797e1d1dea2ea8" "11a7a9f02f0aae8b16888799cabc07024925743ab5e19dd18292af02b1de0d74" "79d50e6b51c2a14a4ff0eaaccab126bb00be9d453606902c20f1ceae01f33ea9" "2013e09b8a08ae78947462bfddadb6f4b933475d3f14d6f4c1aa8e82a17ff66c" "aa3e1682e13d3a64049d2b4bc8d273f260e518d68fa83f0a5bc4737c95e8d844" "3bf8bef256f53ff9e5132353b2cf6c560d0245e4b235c09a5a00c238e3eed8b6" "f39ede5a9101c0fe2c04cec3b7466f6ce799c24bf73802e1be607fd2da8b4377" default))
 '(emmet-move-cursor-between-quotes t)
 '(expand-region-preferred-python-mode 'fgallina-python)
 '(font-latex-fontify-sectioning 'color)
 '(frame-resize-pixelwise t)
 '(global-hl-line-mode t)
 ;; '(ivy-posframe-border-width 3)
 ;; '(ivy-posframe-height 8)
 ;; '(ivy-posframe-mode t nil (ivy-posframe))
 ;; '(ivy-posframe-width 75)
 '(linum-format " %7i ")
 '(minions-mode-line-delimiters '("" . ""))
 '(minions-mode-line-lighter "")
 '(moody-mode-line-height 30)
 '(org-export-backends '(ascii beamer html icalendar latex md))
 '(package-selected-packages
	 '(list-packages-ext company-emoji company-lsp lsp-mode company-anaconda anaconda-mode gnu-elpa-keyring-update jedi-core company-jedi ace-window iedit avy eterm-256color abyss-theme abs-mode dired-hide-dotfiles ivy-hydra wgrep minions moody posframe ivy-posframe yasnippet-snippets web-mode vue-mode vlf use-package transpose-frame sublimity sqlup-mode sql-indent smartparens request-deferred rainbow-mode pydoc py-autopep8 pos-tip php-auto-yasnippets org-bullets org-babel-eval-in-repl multiple-cursors math-symbol-lists markdown-preview-mode key-chord json-mode js2-mode iy-go-to-char image+ expand-region evil-iedit-state eval-sexp-fu emmet-mode elpy drag-stuff dired-subtree dired-quick-sort dired-open dired-narrow dired-collapse csv-mode counsel company-web company-tern company-php command-log-mode cl-generic avy-flycheck auto-complete auctex async adaptive-wrap ace-jump-mode))
 ;; '(posframe-inhibit-double-buffering nil)
 '(pydoc-command "python3 -m pydoc")
 '(scroll-preserve-screen-position 1))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
