class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/archive/v1.3.zip"
  sha256 "cd6e9d67d5d4f4ca1ab8360b07656b9bcc141d6c07b6de7bf042c94b58c5eb0e"

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
