class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772944223-gd2fd7a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772944223-gd2fd7a/amp-darwin-arm64"
      sha256 "7cff4157c8f66fb1a5dd863749121630b930660843f610f10a4ab1c10cfcc24b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772944223-gd2fd7a/amp-darwin-x64"
      sha256 "df92606e802ef8d1f034ab657892d8d99998cb1c4fbc23c0603ceaf9232902a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772944223-gd2fd7a/amp-linux-arm64"
      sha256 "45e76ed41f8ab5e518d66076dbffa16c62ffc534a8ef061d1e222168164f03a7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772944223-gd2fd7a/amp-linux-x64"
      sha256 "216a9a4ea97a5b1d8cb96053244732427a5a79893336b4b7f495e5f98ab2e9b9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
