class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771517635-gb186b1"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771517635-gb186b1/amp-darwin-arm64"
      sha256 "45c75105645385709cfc168e38880d45977669ec8162777631470261acdff737"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771517635-gb186b1/amp-darwin-x64"
      sha256 "0c93d26781f3065897b60f33894d19207eb63f162de6e29a88900d367f8a325f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771517635-gb186b1/amp-linux-arm64"
      sha256 "db50dcff8a23fed0419adce0b332f8b9149bcff83b6c8654f855d9cab0f38672"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771517635-gb186b1/amp-linux-x64"
      sha256 "7ce5876c6b0a800cd5dcd5fd0709fa4644b74549e1764e909643ce2b2c4afc6e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
