class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780074265-g6cfdc3"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780074265-g6cfdc3/amp-darwin-arm64"
      sha256 "79f3f777b1f6610fc8b6e0c06f0b4b0035ce394a40b593b2708df8adf5497ed4"
    else
      url "https://static.ampcode.com/cli/0.0.1780074265-g6cfdc3/amp-darwin-x64"
      sha256 "f9413da8598677b9bbb7aa5aa5e02a546de8e02d3ed7111d2c69461bff288a88"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780074265-g6cfdc3/amp-linux-arm64"
      sha256 "348e4c47f177a81e40221b4825e789bd63bf59eed1d8f261eefb85c0f9e445b1"
    else
      url "https://static.ampcode.com/cli/0.0.1780074265-g6cfdc3/amp-linux-x64"
      sha256 "41e1ad3ccf18532cbf5dc71126ffd80bff5816aee5f245cacf6d1848a6a09f2f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
