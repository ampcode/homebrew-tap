class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773154278-gdc4850"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773154278-gdc4850/amp-darwin-arm64"
      sha256 "4f6022ba4d253e6c6a4c6b2eb28476b4574bb0e699631af11058599261178f69"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773154278-gdc4850/amp-darwin-x64"
      sha256 "444abb7d43302b6562f77f8db964cd6f6f23cc6301589245cb3b4b9764028287"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773154278-gdc4850/amp-linux-arm64"
      sha256 "a360a9b040d270a68658acfdfeca68f08a3e6e473b9a7d8420841b1d4d39a880"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773154278-gdc4850/amp-linux-x64"
      sha256 "4feaa711025d0034f3fbdda43f57e880ee0e6fc781072043b492fa9419bba944"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
