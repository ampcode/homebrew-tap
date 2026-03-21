class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774126892-geb7ca3"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774126892-geb7ca3/amp-darwin-arm64"
      sha256 "15ab003aa0936a82b05af789a735c7d74688c9b3a04699ac6ce6ab3464ea2cbd"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774126892-geb7ca3/amp-darwin-x64"
      sha256 "c636d66df59f236a186def40a008218f1330c7c3a057aba9e49c6710b34c3563"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774126892-geb7ca3/amp-linux-arm64"
      sha256 "32e2d29f12df5a518ac2084ec2efadedc17f8e97ba3666a1cd9695ce1181ea6e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774126892-geb7ca3/amp-linux-x64"
      sha256 "5c6d99ba56ef67716eab4ac15d2a0a7038a5dd725ac685390ff40055ae6da3aa"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
