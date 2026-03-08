class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772937800-g3b2e3d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772937800-g3b2e3d/amp-darwin-arm64"
      sha256 "e4f018a31485971817daa8ad78d088636828ee296b601b1d8f051c88be1470b7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772937800-g3b2e3d/amp-darwin-x64"
      sha256 "3862fb7b47c7f68f496ecfe434dafc2a10c4d355f4fb11616ac58688436c6823"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772937800-g3b2e3d/amp-linux-arm64"
      sha256 "8ae18cbe849395bfa573a8e75da9b172dd7ef8755a47a5120d3a0cd4f0dddce7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772937800-g3b2e3d/amp-linux-x64"
      sha256 "89b45b3c668bbaf3b14732ac35be34cb65c8a06f93fac4e3eb577c923ffa9b5d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
