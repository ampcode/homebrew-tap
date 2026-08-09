class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786249585-g6ca812"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786249585-g6ca812/amp-darwin-arm64"
      sha256 "876cf9719153acadb65a7a4c93d28e0aa3884de9d815327bde91f41164cb9ff6"
    else
      url "https://static.ampcode.com/cli/0.0.1786249585-g6ca812/amp-darwin-x64"
      sha256 "92b8afe0f7b8195b208b077d974d4973b25c940bc63ec2d993c9cbfb744867b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786249585-g6ca812/amp-linux-arm64"
      sha256 "36f8d9fed8040082dda6d12a3ce8c5642d813549ab11f3786bdb9b3ead277945"
    else
      url "https://static.ampcode.com/cli/0.0.1786249585-g6ca812/amp-linux-x64"
      sha256 "39d84a9ebf4fa6aad4abd203af33d434193dd2a4dd8b2f43a71b34b26212befe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
