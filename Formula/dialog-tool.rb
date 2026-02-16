class DialogTool < Formula
  desc "Assist building projects for the Dialog programming language"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-11/dialog-tool-2.0-alpha-11.zip"
  version "2.0-alpha-11"
  sha256 "dcbc30b75961fee80e197b53df4eafbe17f9dba060221432149774c54b125424"
  version_scheme 1 # Because version was borked in some prior releases due to -alpha-

  depends_on "borkdude/brew/babashka"
  depends_on "dialog-if/brew/aamachine"
  depends_on "dialog-if/brew/dialog-if"
  depends_on "frotz"
  depends_on "imagemagick"
  depends_on "java"

  def install
      bin.install "bb.edn"
      bin.install "dialog-tool-2.0-alpha-11.jar"
      bin.install "dgt"

      zsh_completion_file = buildpath/"_dgt"

      ENV["CLI_TOOLS_CACHE_DIR"] = buildpath

      system "bb", bin/"dgt", "completions", zsh_completion_file

      zsh_completion.install zsh_completion_file
  end

  test do
    system "./dgt", "help"
  end
end
