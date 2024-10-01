class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-3/dialog-tool-2.0-alpha-3.zip"
  sha256 "969821b815cb31a8a072275b52fd6dcf5f11dfbbc921a91c01a41f77c0cb3a22"

  version "2.0-alpha-3"

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
