class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791547250-gb79b2a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791547250-gb79b2a/amp-darwin-arm64"
      sha256 "aeb10df51540e434f2efea615b60eedcc49a18a5cac087faf0aa75ff7890a929"
    else
      url "https://static.ampcode.com/cli/0.0.1791547250-gb79b2a/amp-darwin-x64"
      sha256 "64642cda6b8394e7a387e62d9a5ea13e6b4198865dd56b423a68935179932542"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791547250-gb79b2a/amp-linux-arm64"
      sha256 "a208e7da4632297851497047ccd7500e38b2b144de2378712a680804ec90ae74"
    else
      url "https://static.ampcode.com/cli/0.0.1791547250-gb79b2a/amp-linux-x64"
      sha256 "0a0a47d2d111e091aaee89922105669612a2c69d1c59c073e93cc48f702622b7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
