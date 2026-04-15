class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776242575-g04d5b8"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776242575-g04d5b8/amp-darwin-arm64"
      sha256 "33a66689374b8ced288a3d13cfda5f6ae947df7f3f626ec72d3e19b5df7b0f46"
    else
      url "https://static.ampcode.com/cli/0.0.1776242575-g04d5b8/amp-darwin-x64"
      sha256 "43f1baa05a441874061ec59a616f0f0d5bbf3cc1e196d86173022c4f97778bfe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776242575-g04d5b8/amp-linux-arm64"
      sha256 "25f76bda4866ba9bcbf4ff5972252680a4929fa22e8a8c9b8430e365ac458aa7"
    else
      url "https://static.ampcode.com/cli/0.0.1776242575-g04d5b8/amp-linux-x64"
      sha256 "911578f27e7a684fdf6cb6dd92531f088be9eb97268f2e8a94583069bd4e16d6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
