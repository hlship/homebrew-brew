class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/archive/v1.1.zip"
  sha256 "3840b9589a698ecd57821b7b7298e90dd0e50282558b74691fa3dde75189d645"

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
