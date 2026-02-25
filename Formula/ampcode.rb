class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771988760-g7e1f35"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771988760-g7e1f35/amp-darwin-arm64"
      sha256 "91640a1b7a4f8cc00c8d19ada65e768618c95aa46949a541918b3e5e9aab8119"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771988760-g7e1f35/amp-darwin-x64"
      sha256 "2a1857aaaf1130ec83eccc18b10fae866cb2bafafa7dbea034166725992c43e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771988760-g7e1f35/amp-linux-arm64"
      sha256 "c3d986b5b2579d2956ad926ac2493bcb987d90b72ffd9654837e856fcd19b946"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771988760-g7e1f35/amp-linux-x64"
      sha256 "a5e34ddd8321389a37c41d6514dcc922a308020e46ca0da19f25a8988b0e6b4a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
