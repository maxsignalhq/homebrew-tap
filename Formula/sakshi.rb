class Sakshi < Formula
  desc "Witness for your AI coding agents"
  homepage "https://github.com/maxsignalhq/Sakshi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.2.0/sakshi-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c15816d39a799600fd07bc45a8addc8b213997e29b785ac2fcc21f3de01a568a"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.2.0/sakshi-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c41a8a9deb06f8617e7079d1d93cea5e11bfeda3445b116301ce867630b02ba8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.2.0/sakshi-v0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db9fecef38d189a17aaa84c52aa676ad841e3755e8ace3feeaed000b58cadd94"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.2.0/sakshi-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ce876be2ed5d61ac14e4705f023605b0b4b81096cf302d6226e620c5c637f32e"
    end
  end

  def install
    bin.install "sakshi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sakshi --version")
  end
end
