{
    packageOverrides = pkgs_: with pkgs_; {
        all = with pkgs; buildEnv {
            name = "all";
            paths = [
                "apache-maven"
                "binutils"
                "clojure"
                "ctags"
                "dpkg"
                "emacs"
                "ffmpeg"
                "fontconfig"
                "git"
                "gnupg"
                "idea-community-2017"
                "leiningen-2.7.1"
                "libreoffice"
                "neovim"
                "openjdk"
                "patchelf"
                "python3.6-ansible"
                "screen"
                "texlive-combined-full-2016"
                "tmux-2.5"
                "tree"
                "vim"
                "wget"
                "wgetpaste"
                "zsh"
            ];
        };
    };
}
