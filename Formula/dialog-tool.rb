class DialogTool < Formula
  desc "Assist building projects for the Dialog programming language"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-9/dialog-tool-2.0-alpha-9.zip"
  sha256 "9b16cedabb0e806339ee87b3a425e4a14cce6cc454f56f59b3ae11e36da6bd2d"

  depends_on "borkdude/brew/babashka"
  depends_on "dialog-if/brew/aamachine"
  depends_on "dialog-if/brew/dialog-if"
  depends_on "frotz"
  depends_on "imagemagick"


  def install
      bin.install "dgt"
      bin.install "src"
      bin.install "resources"
      bin.install "skein-ui"
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
