class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780291930-gf6d536"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780291930-gf6d536/amp-darwin-arm64"
      sha256 "ccb42070c2da5f056c98b400ff07e31470516a33dd5dafc6dce560f48145384f"
    else
      url "https://static.ampcode.com/cli/0.0.1780291930-gf6d536/amp-darwin-x64"
      sha256 "31793eb41a158d0afcedb942bf23c07cfaed61268c19c27fa92b01bb7a2899ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780291930-gf6d536/amp-linux-arm64"
      sha256 "a8a0cb2ca5994e5f7cc94e9a24ce557870a3d4fc358fcb9d269c688763e5a1ae"
    else
      url "https://static.ampcode.com/cli/0.0.1780291930-gf6d536/amp-linux-x64"
      sha256 "58ddad23926a4070787a184a53da5ed7590a9f4e5ce0bed2399e1897ddda46c0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
