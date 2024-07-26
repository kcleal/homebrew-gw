class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "80a595adfcc230afcaf170b86252f4451f61b98e670bcb4c443ea72be9070cf1"
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
