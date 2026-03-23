class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774296528-gcbe74a6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774296528-gcbe74a6/amp-darwin-arm64"
      sha256 "4e5252458580bcdf57741cc0d6a599c49547b3f16c9b985d136190f320af9dd4"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774296528-gcbe74a6/amp-darwin-x64"
      sha256 "d123e9c8742656bf564ea9a325219877b6ab0d5bc20eed1504f198f4f86f4e5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774296528-gcbe74a6/amp-linux-arm64"
      sha256 "1e7f5e957a3e1fcdf3f43f17c332c7b0c27f021d11d0902fae9eb0ab526297f0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774296528-gcbe74a6/amp-linux-x64"
      sha256 "1ba56d5e1a63e718ce25e8162ffb73ccfe8ead0fcb4ee9a1f06dcd78ffbc5d9e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
