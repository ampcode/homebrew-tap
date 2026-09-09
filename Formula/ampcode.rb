class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788961181-g249c6d"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788961181-g249c6d/amp-darwin-arm64"
      sha256 "526e1fefc49f67ac6c9732d4a7382b5a8067594f213fe8bb46fd08de17088caf"
    else
      url "https://static.ampcode.com/cli/0.0.1788961181-g249c6d/amp-darwin-x64"
      sha256 "57f0a3dd49ecf8433c0f45a4c09c9081f5b9d1b415c68662f5fe8df0b6126676"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788961181-g249c6d/amp-linux-arm64"
      sha256 "6e0d73e68ac9046a6008f22d704e52bb06afb3f33976566e940aae9b8cb383ab"
    else
      url "https://static.ampcode.com/cli/0.0.1788961181-g249c6d/amp-linux-x64"
      sha256 "0b0f91fd3777795509364bf6949d94d66ef0b21bbf11e2b7482726ca04acd4e1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
