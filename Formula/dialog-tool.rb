class DialogTool < Formula
  desc "Assist building projects for the Dialog programming language"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-10/dialog-tool-2.0-alpha-10.zip
  sha256 "d91ada75992c8134e5e47c00e8dfc39d0e20e8e220459a62c1fde77929d531fc"

  depends_on "borkdude/brew/babashka"
  depends_on "dialog-if/brew/aamachine"
  depends_on "dialog-if/brew/dialog-if"
  depends_on "frotz"
  depends_on "imagemagick"

  def install
      bin.install "dgt"
      bin.install "src"
      bin.install "resources"
      bin.install "bb.edn"

      zsh_completion_file = buildpath/"_dgt"

      ENV["CLI_TOOLS_CACHE_DIR"] = buildpath

      system "bb", bin/"dgt", "completions", zsh_completion_file

      zsh_completion.install zsh_completion_file
  end

  test do
    system "./dgt", "help"
  end
end
