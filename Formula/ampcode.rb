class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774542102-g618b9f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774542102-g618b9f/amp-darwin-arm64"
      sha256 "afb90778f6c0a1d37ac8398fb2d954c2cf3796104a21e5c17768d4c687248af6"
    else
      url "https://static.ampcode.com/cli/0.0.1774542102-g618b9f/amp-darwin-x64"
      sha256 "972e00add82c61038f0991fc64dfa905990effb33989d7fbec428188c3b8b0c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774542102-g618b9f/amp-linux-arm64"
      sha256 "47c088af1a5179b9b6328d8a7ced293af6f905e0742f79b610c8592e2e4c7875"
    else
      url "https://static.ampcode.com/cli/0.0.1774542102-g618b9f/amp-linux-x64"
      sha256 "087708f30a2c90728da45dc2b17f8bc3b7504546e1b80282ac45a3773dcce7b5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
