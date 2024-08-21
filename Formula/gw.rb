class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "1f9b17702a073e255a87e5e273c0dd0ddafbc25c02b19aa143b3d744ce5d359d"
  license "MIT"
  depends_on "fontconfig"
  depends_on "glfw"
  depends_on "htslib"
  depends_on "icu4c"
  depends_on "wget"
  depends_on "zlib"

  def install
    system "make", "prep"
    system "make"
    bin.install "gw"
    bin.install ".gw.ini"
  end

  test do
    system "bin/gw", "--version"
  end
end
