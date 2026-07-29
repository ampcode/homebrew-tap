class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785334225-g9abe75"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785334225-g9abe75/amp-darwin-arm64"
      sha256 "d911006627760b651f9dd3a9d08a55d126589a73bf3f97ca227cee50fa3c3f57"
    else
      url "https://static.ampcode.com/cli/0.0.1785334225-g9abe75/amp-darwin-x64"
      sha256 "5c841497ff57aac6a55b2d4a000c320fe547ccd77ef94844771f78fbf72bfba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785334225-g9abe75/amp-linux-arm64"
      sha256 "5d08d6ec9e84dffac2dc0e320e7144467daf01e8326dac067dd6198f825b2f29"
    else
      url "https://static.ampcode.com/cli/0.0.1785334225-g9abe75/amp-linux-x64"
      sha256 "c92fa468409e4d38e85c7049797163e7c517f08fe65f0f0555d913e1bdb08d1a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
