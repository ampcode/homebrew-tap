class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770284702-g7ac741"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770284702-g7ac741/amp-darwin-arm64"
      sha256 "8b83350499ce2fae319db64f33a12b32d62cfb55edaa73700b4736d80881fa92"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770284702-g7ac741/amp-darwin-x64"
      sha256 "3a862be0c7ce18d19b733929b7fa1eff6f1ec291fb94bd0e5cc369b612e44491"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770284702-g7ac741/amp-linux-arm64"
      sha256 "b5c08ae24e9de36ee95f6a17c243656337b8c3272080728f19501d263f2d68b0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770284702-g7ac741/amp-linux-x64"
      sha256 "51d0812340582c2db88aad912cb9b83f7aa349fc49581ba4fed42d6a9b6ead6a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
