class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773144252-gbfe363"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773144252-gbfe363/amp-darwin-arm64"
      sha256 "a57010e009bbad8f93c1d6766b08be9956cdc2498526c1fd69cf2a909a5e9ba9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773144252-gbfe363/amp-darwin-x64"
      sha256 "130129c2b7c393c0be6401b44d0a1c539ae2e11c97a50124cc067c3dee7ee906"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773144252-gbfe363/amp-linux-arm64"
      sha256 "03739798d671ae1eca6f95039437f9286c8831ea3efd9c3437790082e7871a3f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773144252-gbfe363/amp-linux-x64"
      sha256 "80dc08aa0d8ea630ae8cf66681810552074feac502c319b58ef7ede1fd107d37"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
