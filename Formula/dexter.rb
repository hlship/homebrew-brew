class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-alpha-2/dexter-0.1-alpha-2.zip"
  version "0.1-alpha-2"
  sha256 "8a7b5e8b952889e7d1aba99d620172ebeccfd348e2f01202f449d930f655920f"

  depends_on "java"

  def install
      bin.install "dexter-0.1-alpha-2.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
