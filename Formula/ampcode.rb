class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772208429-ge4b10a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772208429-ge4b10a/amp-darwin-arm64"
      sha256 "369385e8af3275c1d2870a1defba175a0a7e3b0af20098bbbd13bb014c12287b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772208429-ge4b10a/amp-darwin-x64"
      sha256 "9fe96c1af201ae4a8abb24965623c67b197ddccae3b8a6721a7ed1b1dec1dd7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772208429-ge4b10a/amp-linux-arm64"
      sha256 "ad2657e79c95bbb5f57511d7d204c58e9efbf04a0ae0f3185a9a1671e0a2bc43"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772208429-ge4b10a/amp-linux-x64"
      sha256 "851d6ac77f37745fff13af01a137111d7598c161fe387ae2965bd9940644cab4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
