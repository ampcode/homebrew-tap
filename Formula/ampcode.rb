class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774027320-g535ffb"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774027320-g535ffb/amp-darwin-arm64"
      sha256 "2a40753e9930377daaff831065bf983cabe7bf328f1cc029723a9ddc3c02f322"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774027320-g535ffb/amp-darwin-x64"
      sha256 "0fefd18c812c3eec18b940ec45a607ae1fc6494ed686db507417a771726b05ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774027320-g535ffb/amp-linux-arm64"
      sha256 "91a57d5bd80f535a4b510a7a0f91d4974cb493a94b06a9981acbbcb991882c9a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774027320-g535ffb/amp-linux-x64"
      sha256 "924c59309fa277a916636d927e5e3f2a9ea408400d55f10a6f8b12a75f51bf1e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
