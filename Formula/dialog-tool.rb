class DialogTool < Formula
  desc "Assist building projects for the Dialog programming language"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-rc-1/dialog-tool-2.0-rc-1.zip"
  version "2.0-rc-1"
  sha256 "5a33b4ad4461b45541038bb28065d2ec683985d6694f18f0724ce5a9e34e84c5"
  version_scheme 1 # Because version was borked in some prior releases due to -alpha-

  depends_on "dialog-if/brew/aamachine"
  depends_on "dialog-if/brew/dialog-if"
  depends_on "frotz"
  depends_on "imagemagick"
  depends_on "java"

  def install
      bin.install "dialog-tool-2.0-rc-1.jar"
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
