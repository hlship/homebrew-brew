class Aamachine < Formula
  desc "Suppot for the Aa-machine IF virtual machine"
  homepage "https://linusakesson.net/dialog/aamachine/"
  url "https://hd0.linusakesson.net/files/aamachine-0.5.1.zip"
  version "0.5.1"
  sha256 "8357c201e45628b2b0a654f16d4cb4c3f47f7c9e7f1f09e059c9b66916d8fcb5"

  def install
    chdir "src" do
      system "make"
      bin.install "aambundle", "aamshow"
    end
    prefix.install "readme.txt", "license.txt"
  end

  test do
    (testpath/"test.dg").write("(program entry point) hello world")
    system bin/"dialogc", "-tz8", "test.dg"
    assert_predicate testpath/"test.z8", :exist?
  end
end
