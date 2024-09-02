class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/v2.0-alpha-1/dialog-tool-v2.0-alpha-1.zip"
  sha256 "493049a4070aad4bf66a9d7f32ed0c67547eaf7764b9e0fbc90a098955792476"

  version "2.0-alpha-1"

  depends_on "vickio/dialog/dialog-if"
  depends_on "borkdude/brew/babashka"


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
