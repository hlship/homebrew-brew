class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-alpha-3/dexter-0.1-alpha-3.zip"
  version "0.1-alpha-3"
  sha256 "a612d42e107994bdb1c6acb6629bf51dc31b4a135e3aa7cffbe0fbc2a168e5ba"

  depends_on "java"

  def install
      bin.install "dexter-0.1-alpha-3.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
