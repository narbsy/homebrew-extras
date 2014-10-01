require "formula"

class Cargo < Formula
  homepage "http://crates.io"
  head "https://github.com/rust-lang/cargo.git"

  depends_on "rust"

  def install
    system "make", "PREFIX=#{prefix}"
    system "make", "PREFIX=#{prefix}", "install"
  end
end
