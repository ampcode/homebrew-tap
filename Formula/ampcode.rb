class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773792340-gded184"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773792340-gded184/amp-darwin-arm64"
      sha256 "ee19991ee586660ed95c35712384b2c091aa05bf0b8db2575c8c55a59603921e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773792340-gded184/amp-darwin-x64"
      sha256 "c2a16aa95df8d43483d1ce2ba48f6bc1c329a823382580cc96a50b2b409637de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773792340-gded184/amp-linux-arm64"
      sha256 "ffa3f900a29f2cb12b43b7a4551e462cd70e4557bd56bf63ffce6604b7a1bd37"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773792340-gded184/amp-linux-x64"
      sha256 "2d1f528d4e249651fce5555d925f389de35fbb6804ce574def0e2466331f7e74"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
