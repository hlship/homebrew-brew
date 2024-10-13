class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-4/dialog-tool-2.0-alpha-4.zip"
  sha256 "4cd6ccba5bcb248f3190cd80fd093ac3a7ed7bab72deb2754d8570df6b5e1cb3"

  version "2.0-alpha-4"

  depends_on "vickio/dialog/dialog-if"
  depends_on "hlship/brew/aamachine"
  depends_on "borkdude/brew/babashka"
  depends_on "imagemagick"


  def install
      bin.install "dgt"
      bin.install "src"
      bin.install "skein-ui"
      bin.install "bb.edn"
  end

  test do
    system "./dgt", "help"
  end
end
