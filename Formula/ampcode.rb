class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773014590-ga2766e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773014590-ga2766e/amp-darwin-arm64"
      sha256 "bb3f5ef54114137d30598de78cd0e5469408806b391c61713b97eb8e9bcbe88f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773014590-ga2766e/amp-darwin-x64"
      sha256 "8008ad91787581b79c04059a6221d1d675c0f91d3a68944fdc13bc7ab56e1376"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773014590-ga2766e/amp-linux-arm64"
      sha256 "1c63e27077456c3885f9347d8e6958e04d6a3677109d089d1d1f28edd146cfc3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773014590-ga2766e/amp-linux-x64"
      sha256 "98d03509311a79f98a6dbb7a330ea1ee5b2730247a885e72d04b8abedf14bc5f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
