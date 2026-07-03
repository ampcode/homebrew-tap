class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783069983-gce9c8b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783069983-gce9c8b/amp-darwin-arm64"
      sha256 "9d94f37188c75d4e643bc15d658c699a942a562924e0f5add393ee1ef3866fb9"
    else
      url "https://static.ampcode.com/cli/0.0.1783069983-gce9c8b/amp-darwin-x64"
      sha256 "ff2054d9cc0de5f0f4c7481028702c3cacc8d5a7f77758a9ab1fa0908ac578ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783069983-gce9c8b/amp-linux-arm64"
      sha256 "180cf5324f88509546329e47dc30f8a037b45701548395a7bdfb4782a733feb8"
    else
      url "https://static.ampcode.com/cli/0.0.1783069983-gce9c8b/amp-linux-x64"
      sha256 "015beb63a2c86d565357c521870cee2b313e18e3f76d39dcb42b415ce7de5287"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
