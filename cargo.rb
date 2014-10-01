require "formula"

class Cargo < Formula
  homepage "http://crates.io"
  head "https://github.com/rust-lang/cargo.git"

  depends_on "rust"

  def install
    args = ["--prefix=#{prefix}"]
    args << "--disable-rpath" if build.head?
    args << "--enable-clang" if ENV.compiler == :clang
    system "./configure", *args
    system "make"
    system "make install"
  end
end
