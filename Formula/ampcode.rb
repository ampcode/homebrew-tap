class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772516766-g0ea5eb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516766-g0ea5eb/amp-darwin-arm64"
      sha256 "76f6cb3ad72b63efd7d761f8140af51bcd8aee7e72f7962e9508ae1721ca7cb8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516766-g0ea5eb/amp-darwin-x64"
      sha256 "8917d4c53789f1625eec3904f9d5c03f1a61680d636b87485b5bf56d96b14781"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516766-g0ea5eb/amp-linux-arm64"
      sha256 "0e8c397453ce3361b6095f2b88bd36a26db24331269d0542f8cd25fa98726315"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772516766-g0ea5eb/amp-linux-x64"
      sha256 "a3333840609592476a9d4f65a378b230cdb112f73f7235072aaa3a93d1dd75bf"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
