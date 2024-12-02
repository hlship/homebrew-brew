class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-5/dialog-tool-2.0-alpha-5.zip"
  sha256 "2a8ab8698d25e081d2574d51b5d037e49c3c7c41ed1803f005a2eca5a68338f4"

  version "2.0-alpha-5"

  depends_on "vickio/dialog/dialog-if"
  depends_on "hlship/brew/aamachine"
  depends_on "borkdude/brew/babashka"
  depends_on "imagemagick"


  def install
      bin.install "dgt"
      bin.install "src"
      bin.install "resources"
      bin.install "skein-ui"
      bin.install "bb.edn"
  end

  test do
    system "./dgt", "help"
  end
end
