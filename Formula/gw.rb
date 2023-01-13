class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "4df85f3725fa2a472fbeba417264492836cfab8854d572e5d2cfaaec5d8309a3"
  license "MIT"
  depends_on "fontconfig"
  depends_on "glfw"
  depends_on "htslib"
  depends_on "icu4c"
  depends_on "wget"
  depends_on "zlib"

  def install
    system "make", "prep"
    system "sed -i.bak 's/lglfw/lglfw3/g' Makefile && make"
    system "cp -n .gw.ini ~/.gw.ini"
    bin.install "gw"
  end

  test do
    system "gw", "--version"
  end
end
