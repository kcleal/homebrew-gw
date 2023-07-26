class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v0.8.2.tar.gz"
  sha256 "519f06fac2635a59614517ff00dc1e86e4f78c2926df504b03ba62a66a5de3e8"
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
