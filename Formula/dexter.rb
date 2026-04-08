class Dexter < Formula
  desc "Interactive dependency explorer for Clojure and JVM projects"
  homepage "https://github.com/hlship/dexter"
  url "https://github.com/hlship/dexter/releases/download/0.1-alpha-5/dexter-0.1-alpha-5.zip"
  version "0.1-alpha-5"
  sha256 "d97ee7f28f93723b882f46489cf1fc045f8c520254ce1344073ba160f521e48c"

  depends_on "java"

  def install
      bin.install "dexter-0.1-alpha-5.jar"
      bin.install "dexter"
      chmod 0755, bin/"dexter"
  end

  test do
    system "./dexter", "--help"
  end
end
