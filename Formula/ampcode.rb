class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793217669-gb7b7f6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793217669-gb7b7f6/amp-darwin-arm64"
      sha256 "9ac1809d4b5fe21093c0562c9d4be5a82cd8a7c67ab69dbd3db9e91ab51d5675"
    else
      url "https://static.ampcode.com/cli/0.0.1793217669-gb7b7f6/amp-darwin-x64"
      sha256 "a4f136a103fb89cd908b1c599e49248bb8f4d60dc2996499175785ab182e33df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793217669-gb7b7f6/amp-linux-arm64"
      sha256 "5aee0eb1e7b7238c0649183e1909f9651b7580478086ccca8568f6dbe4a3d32c"
    else
      url "https://static.ampcode.com/cli/0.0.1793217669-gb7b7f6/amp-linux-x64"
      sha256 "52fc1dcce09f4cd08d24ef64e6512c512444765ac422716f6ca333bd3e2a3d3b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
