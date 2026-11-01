class Sakshi < Formula
  desc "Witness for your AI coding agents"
  homepage "https://github.com/maxsignalhq/Sakshi"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.1.0/sakshi-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c4334ef5163fad81e2405c17547512ef374958e82e8e5aaee08a5b2bf4d3c3e3"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.1.0/sakshi-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "84dd22b8a29032467de88d4de34d8f0b7489ad39d4ef6ccc344e89b34b35402e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.1.0/sakshi-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c26dbcc0ac656cd80972530de8644b18bf3948e84ac891ea9d107fc39ed73fe"
    else
      url "https://github.com/maxsignalhq/Sakshi/releases/download/v0.1.0/sakshi-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abbaf7e77a5300a2a9f306b2c97ca5423f910c0ce77b18872c6daaefa29bec6e"
    end
  end

  def install
    bin.install "sakshi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sakshi --version")
  end
end
