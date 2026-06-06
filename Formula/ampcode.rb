class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780758560-g54ecf7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780758560-g54ecf7/amp-darwin-arm64"
      sha256 "d813873ff86d890a5acf079e3fe868a6a82f398fa1e6de66c127b4c2253943dc"
    else
      url "https://static.ampcode.com/cli/0.0.1780758560-g54ecf7/amp-darwin-x64"
      sha256 "2b9948047945c7d2815bfd42ce6dbcabe57835a9b5059450e45dda7f242ea12f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780758560-g54ecf7/amp-linux-arm64"
      sha256 "e963c6a5365375edb1ef26b0aa554a2ce9426b3adf26c40eac615759f2e694b0"
    else
      url "https://static.ampcode.com/cli/0.0.1780758560-g54ecf7/amp-linux-x64"
      sha256 "6d0a9a5cd6830c89bfdcfa9cd8d9d1826f0b64370d664fb239afce2e8da5671b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
