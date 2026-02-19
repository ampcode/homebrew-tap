class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771475646-g726885"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771475646-g726885/amp-darwin-arm64"
      sha256 "84da86ae788b02d71928bfa4a76fb2cee282df6036effbffa87ace1dbf3bd513"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771475646-g726885/amp-darwin-x64"
      sha256 "fc48e1b71fc7839b2460a755296327b2d108d7abb3a71eb97501d72f308c7309"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771475646-g726885/amp-linux-arm64"
      sha256 "79a0dac752be1b6ef65438c876490b2aeab754f838bba3ead03014bd32761c22"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771475646-g726885/amp-linux-x64"
      sha256 "771e44b771d7967a36e36d1255c16a44841006f6b3a4601f0033e5d8a7b45ad6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
