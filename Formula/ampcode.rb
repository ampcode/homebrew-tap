class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782089920-gbb43a4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782089920-gbb43a4/amp-darwin-arm64"
      sha256 "79c9934832e30aafb3d64b5066516fdbf7d52170cb6ac6bb9875c7c1bfceefbe"
    else
      url "https://static.ampcode.com/cli/0.0.1782089920-gbb43a4/amp-darwin-x64"
      sha256 "6c9f5b185a90e56f205b866bd635c8566db8a19063406dba377e0dc9e887c287"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782089920-gbb43a4/amp-linux-arm64"
      sha256 "384ab855edb2031ceb56503699cfa88db6f6bb5104bcc434f5b307ce7c590413"
    else
      url "https://static.ampcode.com/cli/0.0.1782089920-gbb43a4/amp-linux-x64"
      sha256 "c6d3a6c3f8c120312e0b7bfcb1a6e91ff56f97c4415b46f2d02d0a459fa0ac3d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
