class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-beta-2/dexter-0.1-beta-2.zip"
  version "0.1-beta-2"
  sha256 "a81e7e5fe7e44290616ede4cee06113eaf65c3113874f9adae2868fd419730ad"

  depends_on "java"

  def install
      bin.install "dexter-0.1-beta-2.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
