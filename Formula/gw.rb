class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v0.4.2.tar.gz"
  sha256 "8b47ec20522683adfb83c236c462ecc879c749923969f8aa25e1b711d4be0f1c"
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
    system "cp -n .gw.ini ~/.gw.ini"
    bin.install "gw"
  end

  test do
    system "gw", "--version"
  end
end
