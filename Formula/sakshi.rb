class Sakshi < Formula
  desc "Witness for your AI coding agents"
  homepage "https://github.com/maxsignalhq/Sakshi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.3.0/sakshi-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "75d7e9c38cd95c027de8796c07db1f2871cffed5a82b02815e18f9843317c0e1"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.3.0/sakshi-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "e0d799cff7ab59b20fb88460089ed69e87d1a8c42d169dfa9d22a8baa9b2033c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.3.0/sakshi-v0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3718d46aae750940fa822dae1931488b59eb71f5775dfeb528506de74afd248e"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.3.0/sakshi-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c90fa32c8f3f0da0dba072d1bed5c45b8c375823576ed5828c54213d7aac75c6"
    end
  end

  def install
    bin.install "sakshi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sakshi --version")
  end
end
