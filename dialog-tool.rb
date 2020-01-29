class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/archive/v1.0.zip"
  sha256 "ce6ce3380a4a0b0031c418c3e9aa61eaf220bf73206f5f59cc0cc030f71f4e41"

  depends_on "candid82/brew/joker"
  depends_on "colordiff"
  depends_on "vickio/dialog/dialog-if"

  def install
    chdir "bin" do
      bin.install "dgt"
    end
    prefix.install "README.md"
  end

  test do
    system bin/"dgt", "help"
  end
end
