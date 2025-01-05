class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-7/dialog-tool-2.0-alpha-7.zip"
  sha256 "82b7737305fc91ca963afd9399275f41128a11314d9cade3336ebec58f0f1cd6"

  version "2.0-alpha-7"

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
  end

  def post_install
      # This will slow down the install by downloading dgt's dependencies, but means first time 
      # startup is faster.
      # system "#{bin}/dgt -h > /dev/null 2>&1"
  end

  test do
    system "./dgt", "help"
  end
end
