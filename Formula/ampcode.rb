class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772021190-g554824"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772021190-g554824/amp-darwin-arm64"
      sha256 "c214bc2e96b890a7a53bfac465a9d7509d9acd15af3a89723415d0f0cd9edaac"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772021190-g554824/amp-darwin-x64"
      sha256 "7206099f6d0ff015be488af06f94b77b8c7cf4a241c382b16a8d52c22d9f5d12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772021190-g554824/amp-linux-arm64"
      sha256 "d41502d53dcc84fdbf5575df0d95202ade989d3ed29fafcdb7f831620379280d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772021190-g554824/amp-linux-x64"
      sha256 "0b455e86cec7ae0d8f591d04f27956c322e5cc5c0a1d956ce5c6e87de52a58ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
