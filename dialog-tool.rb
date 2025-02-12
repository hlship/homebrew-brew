class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-8/dialog-tool-2.0-alpha-8.zip"
  sha256 "687348118361dda0bcb204b4f96c892b32dc009caa4c8d18b85872e0062d56de"

  version "2.0-alpha-8"

  depends_on "vickio/dialog/dialog-if"
  depends_on "hlship/brew/aamachine"
  depends_on "borkdude/brew/babashka"
  depends_on "imagemagick"
  depends_on "frotz"


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
