class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788177654-gb73383"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788177654-gb73383/amp-darwin-arm64"
      sha256 "efd0f84b44c7dc84fd55553f25e9306fb6c2f725074113ea1ab4083e879226fd"
    else
      url "https://static.ampcode.com/cli/0.0.1788177654-gb73383/amp-darwin-x64"
      sha256 "a1e7f62edd9d9d96e13f7c740c2cc4ec19d583c9f698466d39ca9f0008099e23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788177654-gb73383/amp-linux-arm64"
      sha256 "9bcedc38ee51676ad47d7d74969087fc5fac74d45137b6c1d560001c2c1b2308"
    else
      url "https://static.ampcode.com/cli/0.0.1788177654-gb73383/amp-linux-x64"
      sha256 "69cc265d9ff557b7d8c282537c4debc3539d65a51188cfc141607af3ebdfb5b0"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
