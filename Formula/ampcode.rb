class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777633650-gb26494"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777633650-gb26494/amp-darwin-arm64"
      sha256 "17d41d0022e4f0d0ab65c43ff0de7c6e09b9e7aaadaa2e72d880250bcb2bc846"
    else
      url "https://static.ampcode.com/cli/0.0.1777633650-gb26494/amp-darwin-x64"
      sha256 "2e8fe6ba8680e632df44189a4e04cf685867027378eecc12c3320f6338891267"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777633650-gb26494/amp-linux-arm64"
      sha256 "4337f93c91a1de3076c05266cfda175feb73056b6f9071360bfc38dcc6b245a8"
    else
      url "https://static.ampcode.com/cli/0.0.1777633650-gb26494/amp-linux-x64"
      sha256 "5e1a4aca83c3b079296ca14a715f05821777f1f74db93233f441fa2eef39717a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
