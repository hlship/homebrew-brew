class DialogTool < Formula
  desc "Tool to assist in testing and building games using Dialog"
  homepage "https://github.com/hlship/dialog-tool"
  url "https://github.com/hlship/dialog-tool/releases/download/2.0-alpha-6/dialog-tool-2.0-alpha-6.zip"
  sha256 "9198d3a217b08aa7b65beecd378fd2f94442e92c2f99dd5e34e19f8054fc115f"

  version "2.0-alpha-6"

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

  def post_install
    # This will slow down the install by downloading dgt's dependencies, but means first time 
    # startup is faster.
      system "#{bin}/dgt -h > /dev/null 2>&1"
  end

  test do
    system "./dgt", "help"
  end
end
