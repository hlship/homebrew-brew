class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-alpha-6/dexter-0.1-alpha-6.zip"
  version "0.1-alpha-6"
  sha256 "b9959ecf274e658a97106fa674c0b8cc5a6ca5ac92a9e1eea385d639d5752d0c"

  depends_on "java"

  def install
      bin.install "dexter-0.1-alpha-6.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
