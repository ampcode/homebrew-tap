class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779700393-g4ef406"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779700393-g4ef406/amp-darwin-arm64"
      sha256 "226cc60e8fe8f45369d398b357c5a3ab8bd3bac1fab0d5d68af64136a5b99e2e"
    else
      url "https://static.ampcode.com/cli/0.0.1779700393-g4ef406/amp-darwin-x64"
      sha256 "18595836888138e890339d02089a616b3b0b79d016a46857ab8c5837bb19c91f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779700393-g4ef406/amp-linux-arm64"
      sha256 "222950fb984eac485d73a4a348b81ab585bb11f8a5469759ffaef801c52e21e5"
    else
      url "https://static.ampcode.com/cli/0.0.1779700393-g4ef406/amp-linux-x64"
      sha256 "f69de21f6d9e58a981d3d1db9e12dcd7525e93edfccb3c158bec587f4be90f89"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
