class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780650074-gfd22e4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780650074-gfd22e4/amp-darwin-arm64"
      sha256 "d9667e6cc54e39a6ce26204b23316a51391f0a81572c15b9cd876a6741675db2"
    else
      url "https://static.ampcode.com/cli/0.0.1780650074-gfd22e4/amp-darwin-x64"
      sha256 "0e3af3aceb152a3192305e16ce2bf5b28a33baa98231299232a2829340169e95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780650074-gfd22e4/amp-linux-arm64"
      sha256 "d6aa5e8175627f559faf183b134ecc969504ad8329202410a0fdc6c0dbebd5d4"
    else
      url "https://static.ampcode.com/cli/0.0.1780650074-gfd22e4/amp-linux-x64"
      sha256 "8e6b27e26c6b0925b422989f2fbdb81405058fd498911dfda6e3a69816ddf29c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
