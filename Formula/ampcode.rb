class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777335248-ga3445e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777335248-ga3445e/amp-darwin-arm64"
      sha256 "f41e9297abf5cf63823b3308d9c26ec2a7170ec1b4e58736be0d85a6c39f1e78"
    else
      url "https://static.ampcode.com/cli/0.0.1777335248-ga3445e/amp-darwin-x64"
      sha256 "a5b803ba58e8392fe2afedd9e0f818f456eb4abe3dec28b8f29adaa62e87fca9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777335248-ga3445e/amp-linux-arm64"
      sha256 "3452de74afebda0a7495e7721c733eb48dfaa243d522bebbf6d638852aa7ae4a"
    else
      url "https://static.ampcode.com/cli/0.0.1777335248-ga3445e/amp-linux-x64"
      sha256 "bf9d55a96d0b89735d0ab92803d8371267195501db0175d806736f614f1c2b23"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
