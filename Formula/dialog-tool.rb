class DialogTool < Formula
  desc "Assist building projects for the Dialog programming language"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-beta-4/dialog-tool-2.0-beta-4.zip"
  version "2.0-beta-4"
  sha256 "c58d29a7097a743b4726383bf92d2bef5bba3d49a60aa9f385ebdb526a5e2a21"
  version_scheme 1 # Because version was borked in some prior releases due to -alpha-

  depends_on "dialog-if/brew/aamachine"
  depends_on "dialog-if/brew/dialog-if"
  depends_on "frotz"
  depends_on "imagemagick"
  depends_on "java"

  def install
      bin.install "dialog-tool-2.0-beta-4.jar"
      bin.install "dgt"
      chmod 0755, bin/"dgt"

      zsh_completion_file = buildpath/"_dgt"

      ENV["CLI_TOOLS_CACHE_DIR"] = buildpath

      system bin/"dgt", "completions", zsh_completion_file

      zsh_completion.install zsh_completion_file
  end

  test do
    system "./dgt", "help"
  end
end
