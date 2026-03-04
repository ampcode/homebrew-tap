class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772646374-g4bd06e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772646374-g4bd06e/amp-darwin-arm64"
      sha256 "33dc5fad718ef84cbe61ddbd8f1d52a5520bcaf8528ee46a9f44f8a95a813c20"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772646374-g4bd06e/amp-darwin-x64"
      sha256 "1079cee3decb4de9e0dce62a36f090d40ea686cda0ac42d9b841a7dd95426a62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772646374-g4bd06e/amp-linux-arm64"
      sha256 "d205e386f2b5e6b11bf06763119a7827e43860ac25c995dc3a1b690869cea480"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772646374-g4bd06e/amp-linux-x64"
      sha256 "79378434e5b8585529e87d1be0e58df9ba1b47badb096edec55fc6ae248ab02e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
