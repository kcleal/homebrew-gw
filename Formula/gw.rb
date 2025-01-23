class Gw < Formula
  desc "Browser for genomic sequencing data and variants"
  homepage "https://github.com/kcleal/gw"
  url "https://github.com/kcleal/gw/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "c01a3ea537342ebfc8ff7e2a5fb04507693e71ba3184ffa4ff1c4bc6d7aba613"
  license "MIT"
  depends_on "fontconfig"
  depends_on "glfw"
  depends_on "htslib"
  depends_on "icu4c"
  depends_on "wget"
  depends_on "zlib"
  on_linux do
    depends_on "wayland"
  end

  def install
    system "make", "prep"
    system "make" "-j3"
    bin.install "gw"
    bin.install ".gw.ini"
  end

  test do
    system "bin/gw", "--version"
  end
end
