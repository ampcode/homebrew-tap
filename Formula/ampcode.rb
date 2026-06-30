class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782810034-g7e1f6f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782810034-g7e1f6f/amp-darwin-arm64"
      sha256 "46fffba54863a9340800440986b4acfb1b9c70d67667355096ca5320d1b93c96"
    else
      url "https://static.ampcode.com/cli/0.0.1782810034-g7e1f6f/amp-darwin-x64"
      sha256 "40123f9cc3da0b448fe18cf2975f14b91c0db38624e08635f77c70b0dd34b18b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782810034-g7e1f6f/amp-linux-arm64"
      sha256 "e8b8ed689c919ad6cc242f17d9fbab6d3f5d28aab6d2accb99bae7bbdc9b5040"
    else
      url "https://static.ampcode.com/cli/0.0.1782810034-g7e1f6f/amp-linux-x64"
      sha256 "3744c325f3f8a00af659d5f8eefd7d534f2981eed604375947311f9040a94427"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
