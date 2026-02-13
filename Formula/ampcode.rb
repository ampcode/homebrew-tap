class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770994460-gef26c8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770994460-gef26c8/amp-darwin-arm64"
      sha256 "04698dbc61ad82c88b242e1e1cb216de7723196cd37c62eab0833a367e5de22e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770994460-gef26c8/amp-darwin-x64"
      sha256 "4324eeaec50a78b4a4c9b171b8cfe56eefa288156d0a5f19897b64e3114ba58f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770994460-gef26c8/amp-linux-arm64"
      sha256 "df97435e4cf755d4cb63b54109528b5ae78c9e15dfa18c8bafa83d671386f62b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770994460-gef26c8/amp-linux-x64"
      sha256 "102ebdbea22f4d549bec9d2e512fa089d62c60b59f58368bfa223635cc9aeb1b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
