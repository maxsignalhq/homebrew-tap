class Sakshi < Formula
  desc "Witness for your AI coding agents"
  homepage "https://github.com/maxsignalhq/Sakshi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v1.0.0/sakshi-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "a81e20238d34dc18a60d1562160bcfeea84990dcf5b86ffaaf5c77b02b3e1be1"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v1.0.0/sakshi-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "e5cca2fc2e71a8069bf941c1b2b46159c3affc7e7eb7a101a9891c53a3180571"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v1.0.0/sakshi-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e724c2d57f835efe393885b781111106c9e5cb7555ea728b14ef438821e7cf64"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v1.0.0/sakshi-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbe6794253c8eb1360af78ac4de49210446ade31490b2402497f2eeee91186e5"
    end
  end

  def install
    bin.install "sakshi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sakshi --version")
  end
end
