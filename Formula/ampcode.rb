class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773576152-gb503c0"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773576152-gb503c0/amp-darwin-arm64"
      sha256 "8dec8735dcf898aab785bdc914be75317a6dcb69942977e15d12c9709511a9d7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773576152-gb503c0/amp-darwin-x64"
      sha256 "fcc4c084ee0685ac56cdf051214caca3520f0a6274f85c8b4d930ffb6493b4fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773576152-gb503c0/amp-linux-arm64"
      sha256 "ce74b8f9de441d3fa4f4835c3d64db894fed59f00d64d16242db03b4b86f50aa"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773576152-gb503c0/amp-linux-x64"
      sha256 "74c70f50ca22650bad47b0839905f0f63a793649c86fd69a6b36a1cf3b97dde1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
