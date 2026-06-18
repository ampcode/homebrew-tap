class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781806752-g1cbf27"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781806752-g1cbf27/amp-darwin-arm64"
      sha256 "698a99f6615b3ebe80e690d7a559f09b78fe12221cb5cb24f25215236b0ef2d4"
    else
      url "https://static.ampcode.com/cli/0.0.1781806752-g1cbf27/amp-darwin-x64"
      sha256 "a4b2783e969a6335053b77e953f437cd8b765abf09560b192f322e91806e156a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781806752-g1cbf27/amp-linux-arm64"
      sha256 "0dda4076a48db4ea9a95bb291c7307f87cb27e6423cd7ea72aa1abef2b93137e"
    else
      url "https://static.ampcode.com/cli/0.0.1781806752-g1cbf27/amp-linux-x64"
      sha256 "005e6f7409c8fe015eb1cadd3ccb3da02ff56531caa114888cddd050ae38d034"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
