class DialogTool < Formula
  desc "Assist building projects for the Dialog programming language"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-beta-7/dialog-tool-2.0-beta-7.zip"
  version "2.0-beta-7"
  sha256 "a9e0b58195111be2f4e39bdeaf8ae93e4a3ee68f6e5265246385fb5cc0f2a04d"
  version_scheme 1 # Because version was borked in some prior releases due to -alpha-

  depends_on "dialog-if/brew/aamachine"
  depends_on "dialog-if/brew/dialog-if"
  depends_on "frotz"
  depends_on "imagemagick"
  depends_on "java"

  def install
      bin.install "dialog-tool-2.0-beta-7.jar"
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
