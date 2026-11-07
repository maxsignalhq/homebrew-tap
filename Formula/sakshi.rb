class Sakshi < Formula
  desc "Witness for your AI coding agents"
  homepage "https://github.com/maxsignalhq/Sakshi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.4.0/sakshi-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "bdf99de36d8b47dd73aec308f163274329276a9d2c54dd47ed5e5e78c9cebacb"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.4.0/sakshi-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "faa692b806638dac1f52959c1ca1d1021eb76a16ae0d688bdae413cb3c7ad5dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.4.0/sakshi-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56c11272bcffe957469c39ff49716484df2bf695d1971f2e1218b97472698530"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.4.0/sakshi-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a4f9772ace9319296d90ae38fb7d3d299bac32c7d29c3d575ee7839e3837d8f"
    end
  end

  def install
    bin.install "sakshi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sakshi --version")
  end
end
