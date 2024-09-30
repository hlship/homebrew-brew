class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/v2.0-alpha-2/dialog-tool-v2.0-alpha-2.zip"
  sha256 "84d0b9737e29619f4a9fa2a03564f0d4aa05e212a091d1f826dd18a55fc9bc9b"

  version "2.0-alpha-2"

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
