class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v0.4.3.tar.gz"
  sha256 "9084f95c7e28146aedbeae591bbbcefe429556313e584f2776c5c8472c749253"
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
    system "gw", "--version"
  end
end
