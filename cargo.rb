require "formula"

class Cargo < Formula
  homepage "http://crates.io"
  head "https://github.com/rust-lang/cargo.git"

  depends_on "rust"
  depends_on "cmake"
  depends_on "pkg-config"

  def install
    args = ["--prefix=#{prefix}"]
    system "./configure", *args
    system "make"
    system "make install"
  end
end
