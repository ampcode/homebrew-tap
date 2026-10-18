class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792324855-g9c86a5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792324855-g9c86a5/amp-darwin-arm64"
      sha256 "83e062e37c034362dc76dc820a01735e758eb6b4b57b857fc4a61081ae6419aa"
    else
      url "https://static.ampcode.com/cli/0.0.1792324855-g9c86a5/amp-darwin-x64"
      sha256 "f6715c5191b9f583fb3a0e9d46d53e448f9bfef8c57fd8fee07281342b05aa31"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792324855-g9c86a5/amp-linux-arm64"
      sha256 "7578b85abf5115ea011dce8813b3260435c228ae5c50fef4decf6f1d74193ac3"
    else
      url "https://static.ampcode.com/cli/0.0.1792324855-g9c86a5/amp-linux-x64"
      sha256 "ef40fe3c5a3315ca63ba09b82dfa45ef3ead271b5cd78a044cbde3421cd5da9b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
