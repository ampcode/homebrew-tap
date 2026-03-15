class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773590611-g8ab646"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773590611-g8ab646/amp-darwin-arm64"
      sha256 "8a916ad11d3c11bbb9f0c12ff25cd46ca94c29c419b2f564405356f748eddf1b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773590611-g8ab646/amp-darwin-x64"
      sha256 "7281331015977c7d41694d47b5eccfb0fee30a6aa75cc5a1c9f8641bc4c22baa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773590611-g8ab646/amp-linux-arm64"
      sha256 "514795a4f616764651c5a4dcb31b73bc6e8889fc4299625b7c9c8e63858e4efb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773590611-g8ab646/amp-linux-x64"
      sha256 "7edfeca0fbfdc8a5865e33bf458cc74b7891d7ae77a08a3f4f558cb53f75bcc7"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
