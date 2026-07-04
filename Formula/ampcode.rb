class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783204427-ge3f41b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783204427-ge3f41b/amp-darwin-arm64"
      sha256 "9c6045ca29df9ae38ae912063bef253be619a88d33a77064365b6e7f6247c5bc"
    else
      url "https://static.ampcode.com/cli/0.0.1783204427-ge3f41b/amp-darwin-x64"
      sha256 "63bcbe9000319db5f913b1ca9ba71e7255cd6d795ff8cd5f3cc3a6c8c9a4f5f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783204427-ge3f41b/amp-linux-arm64"
      sha256 "a5fe924c193f0a91d552694266dcca69d107cd26b0789046488374227bcf131f"
    else
      url "https://static.ampcode.com/cli/0.0.1783204427-ge3f41b/amp-linux-x64"
      sha256 "ec82c284967129edd54120f9180c39e3d10f4a397d629d301cdc948dc7dd1563"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
