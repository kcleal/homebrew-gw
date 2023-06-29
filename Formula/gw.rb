class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "61bf1be3449814442be98dc924e0b51e9fd90f03197a8d398c57c2d2b69cab6f"
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
