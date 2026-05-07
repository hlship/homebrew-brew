class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-beta-1/dexter-0.1-beta-1.zip"
  version "0.1-beta-1"
  sha256 "87182a724025b894e6d7a5a065d9d14436c5be362f1cea13e5050fa76baf3144"

  depends_on "java"

  def install
      bin.install "dexter-0.1-beta-1.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
