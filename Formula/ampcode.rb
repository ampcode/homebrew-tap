class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792296040-g5ce754"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792296040-g5ce754/amp-darwin-arm64"
      sha256 "78499f720e6eb025fc9ccd477334179e3d5d90d594f0865162fe0ef4617f4f3a"
    else
      url "https://static.ampcode.com/cli/0.0.1792296040-g5ce754/amp-darwin-x64"
      sha256 "1132e07ffe4dcbed62be5a62f5470e94ec7dd9c4c56a3f81acc444754a489636"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792296040-g5ce754/amp-linux-arm64"
      sha256 "fdbc7a6400a80eda46fd1ea5a7321ba5c3fc8e3e6cc27d2b4b443ed4031fe6e2"
    else
      url "https://static.ampcode.com/cli/0.0.1792296040-g5ce754/amp-linux-x64"
      sha256 "858738bdbca8c6c5c58826c3ee56bc007fa914c5500c34ef06ed7fe5257aaf60"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
