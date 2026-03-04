class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772598553-g132276"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772598553-g132276/amp-darwin-arm64"
      sha256 "db8eb81327d8f400ce82b4e31c98fc3cc4ebf3fb610e8d7c378f0315e80d7740"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772598553-g132276/amp-darwin-x64"
      sha256 "93245a1be34ebbed17f2ad1fb29e842a3b08b58934702c25ce2e302120b312b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772598553-g132276/amp-linux-arm64"
      sha256 "1e5ed2aeec88b28a1496360e910724e5ca6816eead124dd3c5abe9253521977d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772598553-g132276/amp-linux-x64"
      sha256 "46e1f4e77c17e4695185c68cff7da77393b494a46c867550ba26dae9595f8103"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
