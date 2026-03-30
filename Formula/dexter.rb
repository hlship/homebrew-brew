class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-alpha-1/dexter-0.1-alpha-1.zip"
  version "0.1-alpha-1"
  sha256 "2f2ed40e6b4d42b569cdfaea88f1e3972fc433439643f7979017ac31be1da2ef"

  depends_on "java"

  def install
      bin.install "dexter-0.1-alpha-1.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
