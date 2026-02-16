class DialogTool < Formula
  desc "Assist building projects for the Dialog programming language"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-11/dialog-tool-2.0-alpha-11.zip"
  sha256 "f2c434a5371cf63e0db10e22af19f9d0d70e883426016e40f0f8d30b1bd0f567"

  depends_on "borkdude/brew/babashka"
  depends_on "dialog-if/brew/aamachine"
  depends_on "dialog-if/brew/dialog-if"
  depends_on "frotz"
  depends_on "imagemagick"
  depends_on "java"

  def install
      bin.install "bb.edn"
      bin.install "dgt"
      bin.install "dialog-tool-2.0-alpha-11.zip"

      zsh_completion_file = buildpath/"_dgt"

      ENV["CLI_TOOLS_CACHE_DIR"] = buildpath

      system "bb", bin/"dgt", "completions", zsh_completion_file

      zsh_completion.install zsh_completion_file
  end

  test do
    system "./dgt", "help"
  end
end
