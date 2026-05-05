class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-alpha-7/dexter-0.1-alpha-7.zip"
  version "0.1-alpha-7"
  sha256 "c7d44f21e278924194545bb8b014c6d0bf2c8370ed317524f56c72eca17c1b7e"

  depends_on "java"

  def install
      bin.install "dexter-0.1-alpha-7.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
