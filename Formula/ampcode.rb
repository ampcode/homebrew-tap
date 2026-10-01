class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790827300-gda351f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790827300-gda351f/amp-darwin-arm64"
      sha256 "430e4babeb9ea81b67dfd8e827a923e54a0b6432096b70d8274252781ddf3dc8"
    else
      url "https://static.ampcode.com/cli/0.0.1790827300-gda351f/amp-darwin-x64"
      sha256 "51483c6f3fcd034ce32c56b33bd8b6bea757f87f194e2e996f204b9252240ee9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790827300-gda351f/amp-linux-arm64"
      sha256 "d8279494f48342bbc917cb1ea891d994a301295b3a29d3b6c2b2cbd82bd04d2e"
    else
      url "https://static.ampcode.com/cli/0.0.1790827300-gda351f/amp-linux-x64"
      sha256 "28b9349a7ae1036ee164f2d4cdeb9ac6355f41221725a5a7923405ab7dc41ef5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
