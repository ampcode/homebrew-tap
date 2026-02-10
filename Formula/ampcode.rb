class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770711051-gbb4653"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770711051-gbb4653/amp-darwin-arm64"
      sha256 "83ca21d6f1f091bbe176538bcf867b4c7bd1a30cf7cad512b07c32542bc40568"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770711051-gbb4653/amp-darwin-x64"
      sha256 "9d6c620534a3169eaf740289d18e0d83c02f735bd00347f275f4fa99a8dd2d65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770711051-gbb4653/amp-linux-arm64"
      sha256 "67e5b2a99b3c8ed5716803e85016eaf0a44b8faa67357484d5b35d6574bb0539"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770711051-gbb4653/amp-linux-x64"
      sha256 "5a5fbff91c774dec7ee31a1e697dd16a4224eaba8bc9336d32ffd1f86c77765e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
