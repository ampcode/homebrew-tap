class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1787428878-gebb20a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787428878-gebb20a/amp-darwin-arm64"
      sha256 "3fec7567b22a011b6880a834b7b2c979968995bd5fd8fba4bf25867feb9e697f"
    else
      url "https://static.ampcode.com/cli/0.0.1787428878-gebb20a/amp-darwin-x64"
      sha256 "0d91e7b6c8be4065b89588a569e417e4d90a7c1101f06caef01def32a8e529ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1787428878-gebb20a/amp-linux-arm64"
      sha256 "a4bdec7bf2648c0cefa2352c6e53f64a4a1382a74c127a7d9383235c1797af32"
    else
      url "https://static.ampcode.com/cli/0.0.1787428878-gebb20a/amp-linux-x64"
      sha256 "58d72a39564ee75b07e416bd68f5415262610d365e8c422e106beeb54f88b29d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
