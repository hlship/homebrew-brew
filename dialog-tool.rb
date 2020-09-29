class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/archive/v1.4.zip"
  sha256 "a8d57567e4fe8191c01f825f77fa756fce19098672c332aae0795d0a5878752c"

  depends_on "candid82/brew/joker"
  depends_on "colordiff"
  depends_on "vickio/dialog/dialog-if"
  depends_on "hlship/brew/aamachine"

  def install
    chdir "bin" do
      bin.install "dgt"
    end
  end

  test do
    system bin/"dgt", "help"
  end
end
