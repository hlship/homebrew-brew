class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/archive/v1.2.zip"
  sha256 "910e7d4bdd8c4b2ed5aab3727278d4afffcac429db18c2e2d1d5843d20958b8e"

  depends_on "candid82/brew/joker"
  depends_on "colordiff"
  depends_on "vickio/dialog/dialog-if"

  def install
    chdir "bin" do
      bin.install "dgt"
    end
  end

  test do
    system bin/"dgt", "help"
  end
end
