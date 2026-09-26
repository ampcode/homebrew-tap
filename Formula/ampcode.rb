class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790452833-gea4e33"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790452833-gea4e33/amp-darwin-arm64"
      sha256 "87a2c772b27d92c01a32313ba4efd0977de1ad4bae477d8efdfe41c0d3a5ff24"
    else
      url "https://static.ampcode.com/cli/0.0.1790452833-gea4e33/amp-darwin-x64"
      sha256 "3fcba4e3540f0b3debd1e4c207b569cf94c5fc4866332fbea537f6dde71f4c80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790452833-gea4e33/amp-linux-arm64"
      sha256 "2d24609d5bd3ec3b7fd47e5f8dd44ed89a0717c0ae261d32cf0afd045a7103e6"
    else
      url "https://static.ampcode.com/cli/0.0.1790452833-gea4e33/amp-linux-x64"
      sha256 "e042f507d10a721890e5d88be911f1bb3816c9b54a7ac906de2cedc8f603cc0b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
